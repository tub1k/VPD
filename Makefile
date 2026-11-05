.PHONY: run-all asm bash c cpp csharp fsharp go java js prolog python rust ts clean

run-all: asm bash c cpp csharp fsharp go java js prolog python rust ts clean

asm:
	@echo "===== Assembler ====="
	gcc -c asm/assembler.s -o asm/assembler.o
	gcc asm/assembler.o -o asm/assembler.exe
	./asm/assembler.exe

bash:
	@echo "===== Bash ====="
	bash bash/lab.sh

c:
	@echo "===== C ====="
	gcc c/lab.c -o c/lab.exe
	./c/lab.exe

cpp:
	@echo "===== C++ ====="
	g++ cpp/lab.cpp -o cpp/lab.exe
	./cpp/lab.exe

csharp:
	@echo "===== C# ====="
	dotnet run csharp/lab.cs

fsharp:
	@echo "===== F# ====="
	dotnet run --project fsharp/fsharp.fsproj

go:
	@echo "===== Go ====="
	go build -o go/lab.exe go/lab.go
	./go/lab.exe

java:
	@echo "===== Java ====="
	javac -encoding UTF-8 java/Lab.java
	java -Dfile.encoding=UTF-8 -Dsun.stdout.encoding=UTF-8 -cp java Lab

js:
	@echo "===== JavaScript ====="
	node javascript/lab.js

prolog:
	@echo "===== Prolog ====="
	swipl -q -g "set_prolog_flag(encoding, utf8), set_stream(user_output, encoding(utf8)), consult('prolog/lab.pl')" -t halt

python:
	@echo "===== Python ====="
	python -X utf8 python/lab.py

rust:
	@echo "===== Rust ====="
	rustc rust/lab.rs -o rust/lab.exe
	./rust/lab.exe

ts:
	@echo "===== TypeScript ====="
	npx tsc typescript/lab.ts
	node typescript/lab.js

clean:
	@echo "===== Cleaning ====="
	rm -f asm/*.o asm/*.exe c/*.exe cpp/*.exe csharp/*.exe go/*.exe java/*.class rust/*.exe rust/*.pdb typescript/*.js a.out
	dotnet clean fsharp/fsharp.fsproj