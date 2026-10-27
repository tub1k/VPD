open System
open System.Text

Console.OutputEncoding <- Encoding.UTF8

let student_name_ru = "Гречушников Павел Сергеевич"
let student_name_en = "Grechushnikov Pavel Sergeevich"
let student_number = 10
let group_name = "М3О-109БВ-26"
let language_name = "F#" 

printfn "Hello to 304 from %s, number %d, group %s!" student_name_en student_number group_name
printfn "Привет, 304! Это %s, номер %d, группа %s!" student_name_ru student_number group_name

let control_value = student_number * 304
printfn "Student ID: %s/%02d | Language: %s | Control: %d" group_name student_number language_name control_value

let word_lengths =
    student_name_en.Split(' ')
    |> Array.map (fun word -> word.Length)

let words_count = word_lengths |> Array.length
let letters_sum = word_lengths |> Array.sum

printfn "Слов в student_name_en: %d | Длины слов: %A | Сумма букв (без пробелов): %d" words_count word_lengths letters_sum