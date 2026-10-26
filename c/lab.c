#include <locale.h>
#include <stdio.h>

int main() 
{
    setlocale(LC_ALL, "Russian");
    char student_name_ru[53] = "Гречушников Павел Сергеевич";
    char student_name_en[31] = "Grechushnikov Pavel Sergeevich";
    int student_number = 10;
    char group_name[17] = "М3О-109БВ-26";
    char language_name = 'C';

    printf("Hello to 304 from %s, number %d, group %s!\n", student_name_en, student_number, group_name);
    printf("Привет, 304! Это %s, номер %d, группа %s!\n", student_name_ru, student_number, group_name);

    int control_value = student_number * 304;
    printf("Student ID: %s/%02d | Language: %c | Control: %d\n", group_name, student_number, language_name, control_value);
    return 0;
}