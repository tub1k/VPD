export {};

interface Student {
    student_name_ru: string;
    student_name_en: string;
    student_number: number;
    group_name: string;
    language_name: string;
}

const student: Student = {
    student_name_ru: "Гречушников Павел Сергеевич",
    student_name_en: "Grechushnikov Pavel Sergeevich",
    student_number: 10,
    group_name: "М3О-109БВ-26",
    language_name: "TypeScript"
};

console.log(`Hello to 304 from ${student.student_name_en}, number ${student.student_number}, group ${student.group_name}!`);
console.log(`Привет, 304! Это ${student.student_name_ru}, номер ${student.student_number}, группа ${student.group_name}!`);

const control_value: number = student.student_number * 304;
const formatted_number: string = String(student.student_number).padStart(2, '0');

console.log(`Student ID: ${student.group_name}/${formatted_number} | Language: ${student.language_name} | Control: ${control_value}`);