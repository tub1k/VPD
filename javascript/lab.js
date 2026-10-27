const student_name_ru = "Гречушников Павел Сергеевич";
const student_name_en = "Grechushnikov Pavel Sergeevich";
const student_number = 10;
const group_name = "М3О-109БВ-26";
const language_name = "JavaScript";

console.log(`Hello to 304 from ${student_name_en}, number ${student_number}, group ${group_name}!`);
console.log(`Привет, 304! Это ${student_name_ru}, номер ${student_number}, группа ${group_name}!`);

const control_value = student_number * 304;
const formatted_number = String(student_number).padStart(2, '0');

console.log(`Student ID: ${group_name}/${formatted_number} | Language: ${language_name} | Control: ${control_value}`);

console.log(`Длина student_name_en: ${student_name_en.length}`);