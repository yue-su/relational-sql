#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess -t -c"

RANDOM_NUMBER=$((RANDOM % 1000))

echo -e "\nEnter your username:"
read USERNAME

USER_ID=$($PSQL "select user_id from users where name='$USERNAME'")

if [[ -z $USER_ID ]]
then
  INSERT_RESULT=$($PSQL "insert into users(name) values('$USERNAME')")
  USER_ID=$($PSQL "select user_id from users where name='$USERNAME'")
  echo Welcome, $USERNAME! It looks like this is your first time here.
else
  GAMES=$($PSQL "select COUNT(*) from games where user_id=$USER_ID")
  BEST=$($PSQL "select MIN(number) from games where user_id=$USER_ID")
  echo Welcome back, $USERNAME! You have played $GAMES games, and your best game took $BEST guesses.
fi

MAIN() {
  echo -e "\nGuess the secret number between 1 and 1000:"
  read GUESS

  RANDOM_NUMBER=$((RANDOM % 1000))  # Generate a random number between 0 and 99

  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    # while loop
    # count need to be initialized as 1
    COUNT=1
    while [[ $GUESS != $RANDOM_NUMBER ]]
    do
      ((COUNT++))
      if [[ $GUESS -gt $RANDOM_NUMBER ]]
      then
        echo "It's lower than that, guess again:"
      elif [[ $GUESS -lt $RANDOM_NUMBER ]]
      then
        echo "It's higher than that, guess again:"
      fi
      read GUESS
    done
    INSERT_GAME=$($PSQL "insert into games(user_id, number) values($USER_ID, $COUNT)")
    echo "You guessed it in $COUNT tries. The secret number was $GUESS. Nice job!"
  else
    echo "That is not an integer, guess again:"
    MAIN
  fi
}

MAIN