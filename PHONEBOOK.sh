#!/bin/bash

Phonebook="phonebook_number"

if [ $# -ne 2 ]
then
	echo "인수는 2개가 들어와야 합니다."
	exit 1
fi

name=$1
phone=$2

if ! [[ "$phone"=~^[0-9]{2.3}-[0-9]{3,4}-[0-9]{4}$ ]]
then
	echo "전화번호는 숫자와 하이픈(-)으로 구성되어야 합니다."
	exit 1
fi

area_code=$(echo "$phone" | cut -d'-' -f1)
area=""

case $area_code in
	"02")area="서울";;
	"031")area="경기";;
	"053")area="대구";;
	"061")area="전남";;
	"042")area="대전";;
	*) echo "유효한 지역이 아닙니다."
		exit 1;;
esac

search_name=$(grep "^$name" "$Phonebook")

if [ -n "$search_name" ]
then
	search_phone=$(echo "$search_name" | awk '{print $2}')
	if [ "$search_phone"=="$phone" ] 
	then
		echo "동일한 전화번호가 존재합니다."
		exit 0
	fi
fi

echo "$name $phone $area" >> "$Phonebook"

sort -o "$Phonebook" "$Phonebook"

echo "새로운 전화번호가 추가되었습니다: $name $phone $area"


