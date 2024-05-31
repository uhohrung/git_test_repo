#!/bin/bash

if [ "$#" -ne 3 ];
then
  echo "입력값 오류"
  exit 1
fi


month="$1"
day="$2"
year="$3"

month=$(echo "$month" | awk '{print toupper(substr($0,1,1)) tolower(substr($0,2))}')

Month() {
case "$1"
in
  "1"|"Jan"|"january") echo "Jan" ;;
  "2"|"Feb"|"february") echo "Feb" ;;
  "3"|"Mar"|"march") echo "Mar" ;;
  "4"|"Apr"|"april") echo "Apr" ;;
  "5"|"May") echo "May" ;;
  "6"|"Jun"|"june") echo "Jun" ;;
  "7"|"Jul"|"july") echo "Jul" ;;
  "8"|"Aug"|"august") echo "Aug" ;;
  "9"|"Sep"|"september") echo "Sep" ;;
  "10"|"Oct"|"october") echo "Oct" ;;
  "11"|"Nov"|"november") echo "Nov" ;;
  "12"|"Dec"|"december") echo "Dec" ;;
  *) echo "Invalid" ;;
esac
}

month=$(Month "$month")

if [ "$month" == "Invalid" ]; 
then
  echo "유효하지 않은 월입니다, 따라서 $1는 유효하지 않습니다"
  exit 1
fi

LeapYear() {
if(( $1 % 4 == 0));
then
  if(( $1 % 400 == 0)); 
  then
    echo "true"
  elif (( $1 % 100 == 0)); 
  then
    echo "false"
  else 
    echo "true"
  fi
else
  echo "false"
fi
}

day() {
case "$1" in
  "Jan") echo 31;;
  "Feb") if [ "$(LeapYear $2)" == "true" ];     then 
    echo 29;
  else 
     echo 28; 
  fi;;
  "Mar") echo 31 ;;
  "Apr") echo 30 ;;
  "May") echo 31 ;;
  "Jun") echo 30 ;;
  "Jul") echo 31 ;;
  "Aug") echo 31 ;;
  "Sep") echo 30 ;;
  "Oct") echo 31 ;;
  "Nov") echo 30 ;;
  "Dec") echo 31 ;;
  *) echo 0 ;;
esac
}

Days=$(day "$month" "$year")
if (( day < 1 || day > Days )); 
then
  echo "$month는 $Days일까지 존재하므로 $month $day $year는 유효하지 않습니다."
  exit 1
fi

echo "$month $day $year"