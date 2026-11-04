# Лабораторная работа №1 по ВПД

* **ФИО студента:** Гречушников Павел Сергеевич
* **Группа:** М3О-109БВ-26
* **Номер в списке:** 10

## Рабочее окружение
- git version 2.55.0.windows.3
- GCC 16.2.0 (with POSIX threads) + LLVM/Clang/LLD/LLDB 23.1.3 + MinGW-w64 14.0.0 (UCRT) - release 3
- Python 3.14.10
- Node.js v24.22.1, npm 11.19.1
- Typescript Version 7.0.2
- JDK 17.0.12d
- .NET SDK 10.0.302
- Rust 1.99.1 + rustup 1.29.2
- Go 1.27.3
- GNU bash, version 5.3.15(1)-release (git bash)
- GNU assembler version 2.47
- SWI-Prolog version 10.0.2 for x64-win64

### Assembler
* **ОС:** Windows 10/11 (64-bit)
* **Архитектура:** `x86_64` (`x86_64-w64-mingw32`)
* **Язык ассемблера:** x86-64 (синтаксис Intel, соглашение о вызовах Microsoft x64 ABI)
* **Toolchain:** MinGW-w64 — GNU Assembler (`as`) и компилятор/компоновщик GCC (`gcc` 16.2.0)
* **Команды сборки и запуска:**
  ```powershell
  as assembler.s -o assembler.o
  gcc assembler.o -o assembler.exe
  .\assembler.exe

## Сводная таблица: Язык — Версия инструмента — Команда сборки/запуска

| Язык / Технология | Версия инструмента | Команда сборки и запуска |
| :--- | :--- | :--- |
| **C** | gcc (MinGW-w64 16.2.0) | `gcc lab.c -o lab.exe && .\lab.exe` |
| **C++** | g++ (MinGW-w64 16.2.0) | `g++ lab.cpp -o lab.exe && .\lab.exe` |
| **Python** | Python 3.x | `python lab.py` |
| **JavaScript** | Node.js | `node lab.js` |
| **TypeScript** | ts-node | `npx ts-node lab.ts` |
| **Java** | OpenJDK | `javac Lab.java && java Lab` |
| **C#** | .NET SDK | `dotnet run` |
| **F#** | .NET SDK | `dotnet run` |
| **Go** | Go toolchain | `go run lab.go` |
| **Rust** | rustc | `rustc lab.rs && .\lab.exe` |
| **Bash** | Git Bash / Bash | `bash lab.sh` |
| **Prolog** | SWI-Prolog | `swipl -q -s lab.pl` |
| **Assembler** | GNU as + gcc | `as assembler.s -o assembler.o && gcc assembler.o -o assembler.exe && .\assembler.exe` |

## Примеры кода и особенности синтаксиса

В лабораторной работе используются различные подходы к форматированию строк и объявлению переменных. Например, в языке C вывод организуется через классический `inline-code` с функцией `printf`, в Rust неизменяемые связующие объявляются через ключевое слово `let`, а в Go вычисляемые значения создаются с помощью короткого объявления `:=`.

Ниже представлен пример реализации программы на языке **Merge**:

```rust
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
```

## Пример ожидаемого вывода в консоль

```text
Hello to 304 from Grechushnikov Pavel Sergeevich, number 10, group М3О-109БВ-26!
Привет, 304! Это Гречушников Павел Сергеевич, номер 10, группа М3О-109БВ-26!
Student ID: М3О-109БВ-26/10 | Language: Rust | Control: 3040
Сформированный student_id: М3О-109БВ-26/10
```

## Обеспечение корректного вывода кириллицы в C / C++

Для корректного отображения символов кириллицы в консоли на уровне исходного кода программ на языках C и C++ применяется функция setlocale(LC_ALL, "Russian"); из соответствующих библиотек для каждого языка.
Все файлы также сохранены в кодировке UTF-8.

## Выполнение japap -c 

```
PS C:\VPD\java> java Lab
Hello to 304 from Grechushnikov Pavel Sergeevich, number 10, group М3О-109БВ-26!
Привет, 304! Это Гречушников Павел Сергеевич, номер 10, группа М3О-109БВ-26!
Student ID: М3О-109БВ-26/10 | Language: Java | Control: 3040
PS C:\VPD\java> dir Lab*


    Каталог: C:\VPD\java


Mode                 LastWriteTime         Length Name                                                                                                                                                               
----                 -------------         ------ ----                                                                                                                                                               
-a----        27.10.2026     12:26            969 Lab.class                                                                                                                                                          
-a----        27.10.2026     12:25            896 Lab.java                                                                                                                                                           


PS C:\VPD\java> javap -c Lab
Compiled from "Lab.java"
public class Lab {
  public Lab();
    Code:
       0: aload_0
       1: invokespecial #1                  // Method java/lang/Object."<init>":()V
       4: return

  public static void main(java.lang.String[]);
    Code:
       0: ldc           #7                  // String ├Ёхўє°эшъют ╧ртхы ╤хЁуххтшў
       2: astore_1
       3: ldc           #9                  // String Grechushnikov Pavel Sergeevich
       5: astore_2
       6: bipush        10
       8: istore_3
       9: ldc           #11                 // String ╠3╬-109┴┬-26
      11: astore        4
      13: ldc           #13                 // String Java
      15: astore        5
      17: getstatic     #15                 // Field java/lang/System.out:Ljava/io/PrintStream;
      20: ldc           #21                 // String Hello to 304 from %s, number %d, group %s!%n
      22: iconst_3
      23: anewarray     #2                  // class java/lang/Object
      26: dup
      27: iconst_0
      28: aload_2
      29: aastore
      30: dup
      31: iconst_1
      32: iload_3
      33: invokestatic  #23                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
      36: aastore
      37: dup
      38: iconst_2
      39: aload         4
      41: aastore
      42: invokevirtual #29                 // Method java/io/PrintStream.printf:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
      45: pop
      46: getstatic     #15                 // Field java/lang/System.out:Ljava/io/PrintStream;
      49: ldc           #35                 // String ╧ЁштхЄ, 304! ▌Єю %s, эюьхЁ %d, уЁєяяр %s!%n
      51: iconst_3
      52: anewarray     #2                  // class java/lang/Object
      55: dup
      56: iconst_0
      57: aload_1
      58: aastore
      59: dup
      60: iconst_1
      61: iload_3
      62: invokestatic  #23                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
      65: aastore
      66: dup
      67: iconst_2
      68: aload         4
      70: aastore
      71: invokevirtual #29                 // Method java/io/PrintStream.printf:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
      74: pop
      75: iload_3
      76: sipush        304
      79: imul
      80: istore        6
      82: getstatic     #15                 // Field java/lang/System.out:Ljava/io/PrintStream;
      85: ldc           #37                 // String Student ID: %s/%02d | Language: %s | Control: %d%n
      87: iconst_4
      88: anewarray     #2                  // class java/lang/Object
      91: dup
      92: iconst_0
      93: aload         4
      95: aastore
      96: dup
      97: iconst_1
      98: iload_3
      99: invokestatic  #23                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
     102: aastore
     103: dup
     104: iconst_2
     105: aload         5
     107: aastore
     108: dup
     109: iconst_3
     110: iload         6
     112: invokestatic  #23                 // Method java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
     115: aastore
     116: invokevirtual #29                 // Method java/io/PrintStream.printf:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
     119: pop
     120: return
}
```