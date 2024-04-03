#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table --tuples-only -X -c"

if [[ -z $1 ]]
then
  echo Please provide an element as an argument.
else
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    RESULT=$($PSQL "select * from elements left join properties using(atomic_number) left join types using (type_id) where atomic_number = $1")
  elif [[ ${#1} -eq 1 ]] || [[ ${#1} -eq 2 ]]
  then
    RESULT=$($PSQL "select * from elements left join properties using(atomic_number) left join types using (type_id) where symbol = '$1'")
  else
    RESULT=$($PSQL "select * from elements left join properties using(atomic_number) left join types using (type_id) where name = '$1'")
  fi
  if [[ -z $RESULT ]]
  then
    echo I could not find that element in the database.
  else
    echo $RESULT | while read TYPE_ID BAR ATOMIC_NUMBER BAR SYMBOL BAR NAME BAR MASS BAR MELTING BAR BOILING BAR TYPE
    do
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    done
  fi  
fi

