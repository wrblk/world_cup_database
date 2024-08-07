#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "truncate games, teams;")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != winner ]]
  then
    TEAM_ID_WINNER=$($PSQL "select team_id from teams where name='$WINNER';")
    TEAM_ID_OPPONENT=$($PSQL "select team_id from teams where name='$OPPONENT';")

    if [[ -z $TEAM_ID_WINNER ]]
    then
      INSERT_TEAM_WINNER=$($PSQL "insert into teams(name) values('$WINNER')")
      TEAM_ID_WINNER=$($PSQL "select team_id from teams where name='$WINNER';")
    fi

    if [[ -z $TEAM_ID_OPPONENT ]]
    then
      INSERT_TEAM_OPPONENT=$($PSQL "insert into teams(name) values('$OPPONENT')")
      TEAM_ID_OPPONENT=$($PSQL "select team_id from teams where name='$OPPONENT';")
    fi

    INSERT_GAME=$($PSQL "insert into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values($YEAR, '$ROUND', $TEAM_ID_WINNER, $TEAM_ID_OPPONENT, $WINNER_GOALS, $OPPONENT_GOALS);")
  fi
done
