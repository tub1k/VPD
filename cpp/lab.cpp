#include <clocale>
#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

int main() 
{
    setlocale(LC_ALL, "Russian");

    string student_name_ru = "Гречушников Павел Сергеевич";
    string student_name_en = "Grechushnikov Pavel Sergeevich";
    int student_number = 10;
    string group_name = "М3О-109БВ-26";
    string language_name = "C++";

    cout << "Hello to 304 from " << student_name_en 
         << ", number " << student_number 
         << ", group " << group_name << "!\n";

    cout << "Привет, 304! Это " << student_name_ru 
         << ", номер " << student_number 
         << ", группа " << group_name << "!\n";

    int control_value = student_number * 304;

    cout << "Student ID: " << group_name << "/" 
         << setw(2) << setfill('0') << student_number 
         << " | Language: " << language_name 
         << " | Control: " << control_value << "\n";

    return 0;
}