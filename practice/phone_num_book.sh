#!/bin/bash

book="/home/runner/OSS/data/phone_num_book.txt"
name="$1"
phone="$2"

# 전화번호 형식이 다르면 종료
if ! [[ "$phone" =~ [0-9]{2,3}-[0-9]{3,4}-[0-9]{4} ]]
then
  echo "전화번호 형식 오류"
  exit 1
fi

# 인수 2개 아니면 종료
if [ "$#" -ne 2 ]
then
  echo "입력 인자 오류"
  exit 2
fi

# 전화번호부에 이름 검색 결과 확인
find_name=$( grep "$name" "$book" )
if [ "$find_name" != null -a "$find_name" != "" ]
then
  # 전화번호부에 번호 검색 결과 확인
  match_num=$( grep "$phone" "$book" )
  if [ "$match_num" != null -a "$match_num" != "" ]
  then
    echo "$name님의 번호는 $phone 입니다."
    exit 0
  fi
fi

echo "등록된 번호가 없습니다. $name님의 번호를 추가합니다."
case ${phone:0:3}
in
  "02-")
    echo "$name $phone 서울" >> "$book"
    exit 0;;
  "031")
    echo "$name $phone 경기" >> "$book"
    exit 0;;
  "051")
    echo "$name $phone 부산" >> "$book"
    exit 0;;
  "042")
    echo "$name $phone 대전" >> "$book"
    exit 0;;
  "062")
    echo "$name $phone 광주" >> "$book"
    exit 0;;
esac
echo "$name $phone" >> "$book"