# Лабораторная работа №1 по ВПД

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