fn main() {
    let student_name_ru = "Гречушников Павел Сергеевич";
    let student_name_en = "Grechushnikov Pavel Sergeevich";
    let student_number = 10;
    let group_name = "М3О-109БВ-26";
    let language_name = "Rust"; 

    println!(
        "Hello to 304 from {}, number {}, group {}!",
        student_name_en, student_number, group_name
    );
    println!(
        "Привет, 304! Это {}, номер {}, группа {}!",
        student_name_ru, student_number, group_name
    );

    let control_value = student_number * 304;
    let student_id = format!("{}/{:02}", group_name, student_number);

    println!(
        "Student ID: {} | Language: {} | Control: {}",
        student_id, language_name, control_value
    );

    println!("Сформированный student_id: {}", student_id);
}