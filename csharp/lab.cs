using System;
using System.Text;

record Student(
    string NameRu,
    string NameEn,
    int Number,
    string GroupName,
    string LanguageName
);

class Program
{
    static void Main()
    {
        Console.OutputEncoding = Encoding.UTF8;

        Student student = new Student(
            NameRu: "Гречушников Павел Сергеевич",
            NameEn: "Grechushnikov Pavel Sergeevich",
            Number: 10,
            GroupName: "М3О-109БВ-26",
            LanguageName: "C#"
        );

        Console.WriteLine($"Hello to 304 from {student.NameEn}, number {student.Number}, group {student.GroupName}!");
        Console.WriteLine($"Привет, 304! Это {student.NameRu}, номер {student.Number}, группа {student.GroupName}!");

        int controlValue = student.Number * 304;
        Console.WriteLine($"Student ID: {student.GroupName}/{student.Number:D2} | Language: {student.LanguageName} | Control: {controlValue}");
    }
}