#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "select SUM(winner_goals)+SUM(opponent_goals) from games")"

echo -e "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL "select AVG(winner_goals) from games")"

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "select ROUND(AVG(winner_goals),2) from games")"

echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "select AVG(winner_goals + opponent_goals) from games")"

echo -e "\nMost goals scored in a single game by one team:"
echo "$($PSQL "select winner_goals from games order by winner_goals desc limit 1")"

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo "$($PSQL "select COUNT(*) from games where winner_goals > 2")"

echo -e "\nWinner of the 2018 tournament team name:"
echo "$($PSQL "select name from games left join teams on games.winner_id=teams.team_id where year=2018 and round='Final'")"

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL "SELECT DISTINCT(name)
FROM teams
LEFT JOIN games AS g1 ON teams.team_id = g1.winner_id
LEFT JOIN games AS g2 ON teams.team_id = g2.opponent_id
WHERE (g1.year = 2014 AND g1.round = 'Eighth-Final') OR
      (g2.year = 2014 AND g2.round = 'Eighth-Final');
")"

echo -e "\nList of unique winning team names in the whole data set:"
echo "$($PSQL "select DISTINCT(name) from games left join teams on games.winner_id=teams.team_id order by name")"

echo -e "\nYear and team name of all the champions:"
echo "$($PSQL "select year, name from games left join teams on games.winner_id=teams.team_id where round='Final' order by year")"

echo -e "\nList of teams that start with 'Co':"
echo "$($PSQL "select name from teams where name like 'Co%'")"
