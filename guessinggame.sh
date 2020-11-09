#!/usr/bin/env bash
# File: guessinggame.sh
# Project: Coursera assignment

function check_number {

final_flag=0
while [[ $final_flag -eq 0 ]]
do
echo "Please, provide number of files in the directory and press Enter:"
read file_num
actual_file_num=$(find ./ -type f | wc -l)
if [[ file_num -gt actual_file_num ]]
then
	echo "Your guess is too High!"
else
	if [[ file_num -lt actual_file_num ]]
	then
		echo "Your guess is too Low!"
	else
		echo "Correct answer!Congratulations!"
		final_flag=1
	fi
fi
done
}

check_number
