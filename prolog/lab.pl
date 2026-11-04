:- encoding(utf8).

student("Гречушников Павел Сергеевич", "Grechushnikov Pavel Sergeevich", 10, "М3О-109БВ-26", "Prolog").

control_value(NameEn, Control) :-
    student(_, NameEn, Number, _, _),
    Control is Number * 304.

in_group(NameEn, Group) :-
    student(_, NameEn, _, Group, _).

main :-
    student(NameRu, NameEn, Number, Group, Lang),
    control_value(NameEn, Control),
    format("Hello to 304 from ~w, number ~d, group ~w!~n", [NameEn, Number, Group]),
    format("Привет, 304! Это ~w, номер ~d, группа ~w!~n", [NameRu, Number, Group]),
    format("Student ID: ~w/~|~`0t~d~2+ | Language: ~w | Control: ~d~n", [Group, Number, Lang, Control]).

:- initialization(main, main).