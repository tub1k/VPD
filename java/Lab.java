public class Lab {
    public static void main(String[] args) {
        String student_name_ru = "Гречушников Павел Сергеевич";
        String student_name_en = "Grechushnikov Pavel Sergeevich";
        int student_number = 10;
        String group_name = "М3О-109БВ-26";
        String language_name = "Java"; 

        System.out.printf("Hello to 304 from %s, number %d, group %s!%n", 
                          student_name_en, student_number, group_name);
        System.out.printf("Привет, 304! Это %s, номер %d, группа %s!%n", 
                          student_name_ru, student_number, group_name);

        int control_value = student_number * 304;
        System.out.printf("Student ID: %s/%02d | Language: %s | Control: %d%n", 
                          group_name, student_number, language_name, control_value);
    }
}