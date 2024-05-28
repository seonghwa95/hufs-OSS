#!/bin/bash

# 인수 개수 확인
if [ "$#" != 3 ]; then
	echo "입력값 오류"
	exit 1
fi

# 인수 valid check
if [ ! $2 -gt 0 -o ! $2 -lt 32 ]
then
	echo "날짜는 1일 부터 31일 까지만 입력이 가능합니다."
	echo "$1월 $2일 $3년은 유효하지 않습니다."
	exit 2
fi

# 월별 initial capital
if [ $1 = "jan" -o $1 = "january" -o $1 = 1 ]
then
	echo "Jan $2 $3"
	exit 0

elif [ $1 = "feb" -o $1 = "february" -o $1 = 2 ]
then

	if [ $2 -gt 29 ] # ----------------
	then
		echo "2월에는 $2일이 존재하지 않습니다."
		echo "$1월 $2일 $3년은 유효하지 않습니다."
		exit 3

	#	윤년
	elif [ $2 -eq 29 ] && (($3 % 4 == 0)) && (($3 % 100 == 0)) && (($3 % 400 == 0))
	then
		:

	# 평년
	elif [ $2 -eq 29 ] && (($3 % 4 != 0))
	then
		echo "해당년도는 윤년이 아닙니다."
		echo "$1월 $2일 $3년은 유효하지 않습니다."
		exit 4

	elif [ $2 -eq 29 ] && (($3 % 4 == 0)) && (($3 % 100 == 0))
	then
		echo "해당년도는 윤년이 아닙니다."
		echo "$1월 $2일 $3년은 유효하지 않습니다."
		exit 4
	fi # -----------------------------
	
	echo "Feb $2 $3"
	exit 0

elif [ $1 = "mar" -o $1 = "march" -o $1 = 3 ]
then
	echo "Mar $2 $3"
	exit 0

elif [ $1 = "apr" -o $1 = "april" -o $1 = 4 ] && [ $2 -lt 31 ]
then
	echo "Apr $2 $3"
	exit 0

elif [ $1 = "may" -o $1 = 5 ]
then
	echo "May $2 $3"
	exit 0

elif [ $1 = "jun" -o $1 = "june" -o $1 = 6 ] && [ $2 -lt 31 ]
then
	echo "Jun $2 $3"
	exit 0

elif [ $1 = "jul" -o $1 = "july" -o $1 = 7 ]
then
	echo "Jul $2 $3"
	exit 0

elif [ $1 = "aug" -o $1 = "august" -o $1 = 8 ]
then
	echo "Aug $2 $3"
	exit 0

elif [ $1 = "sep" -o $1 = "september" -o $1 = 9 ] && [ $2 -lt 31 ]
then
	echo "Sep $2 $3"
	exit 0

elif [ $1 = "oct" -o $1 = "october" -o $1 = 10 ]
then
	echo "Oct $2 $3"
	exit 0

elif [ $1 = "nov" -o $1 = "november" -o $1 = 11 ] && [ $2 -lt 31 ]
then
	echo "Nov $2 $3"
	exit 0

elif [ $1 = "dec" -o $1 = "december" -o $1 = 12 ]
then
	echo "Dec $2 $3"
	exit 0

elif [ $2 -eq 31 ]
then
	echo "$1월은 31일이 존재하지 않습니다."
	exit 5
fi
