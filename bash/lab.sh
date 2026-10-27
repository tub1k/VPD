#!/usr/bin/env bash

student_name_ru="Гречушников Павел Сергеевич"
student_name_en="Grechushnikov Pavel Sergeevich"
student_number=10
group_name="М3О-109БВ-26"
language_name="Bash"

printf "Hello to 304 from %s, number %d, group %s!\n" "$student_name_en" "$student_number" "$group_name"
printf "Привет, 304! Это %s, номер %d, группа %s!\n" "$student_name_ru" "$student_number" "$group_name"

control_value=$((student_number * 304))
printf "Student ID: %s/%02d | Language: %s | Control: %d\n" "$group_name" "$student_number" "$language_name" "$control_value"

words_count=$(printf "%s" "$student_name_en" | wc -w)
chars_count=$(printf "%s" "$student_name_en" | wc -m)

printf "В student_name_en слов: %d | символов: %d\n" "$words_count" "$chars_count"