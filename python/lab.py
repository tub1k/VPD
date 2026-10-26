student_name_ru = "Гречушников Павел Сергеевич"
student_name_en = "Grechushnikov Pavel Sergeevich"
student_number = 10
group_name = "М3О-109БВ-26"
language_name = "Python"

print(f"Hello to 304 from {student_name_en}, number {student_number}, group {group_name}!")
print(f"Привет, 304! Это {student_name_ru}, номер {student_number}, группа {group_name}!")

control_value = student_number * 304
print(f"Student ID: {group_name}/{student_number:02d} | Language: {language_name} | Control: {control_value}")

words_count = len(student_name_en.split())
print(f"Количество слов в student_name_en: {words_count}")