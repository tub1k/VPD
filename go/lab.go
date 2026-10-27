package main

import "fmt"

func main() {
	var student_name_ru string = "Гречушников Павел Сергеевич"
	var student_name_en string = "Grechushnikov Pavel Sergeevich"
	var student_number int = 10
	var group_name string = "М3О-109БВ-26"
	var language_name string = "Go"

	fmt.Printf("Hello to 304 from %s, number %d, group %s!\n", student_name_en, student_number, group_name)
	fmt.Printf("Привет, 304! Это %s, номер %d, группа %s!\n", student_name_ru, student_number, group_name)

	studentID := fmt.Sprintf("%s/%02d", group_name, student_number)
	control_value := student_number * 304

	fmt.Printf("Student ID: %s | Language: %s | Control: %d\n", studentID, language_name, control_value)
}