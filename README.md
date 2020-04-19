# Łukasz Gut Assembler x86 i x86-64
To repozytorium zawiera zadanie do wykonania w ramach laboratorium oraz
prezentację i przykłady z seminarium.

# Instrukcja
Zadanie należy rozwiązywać w przygotowanym środowisku Dockerowym.
Aby uruchomić to środowisko, należy wpisać poniższą komendę:

```sh
run_gut_lukasz.sh run
```

Skrypt ten uruchamia specjalnie przygotowany obraz Dockerowy, który
zawiera w sobie Ubuntu z zainstalowanymi wszystkimi dependencjami.  

Po uruchomieniu środowiska, użytkownik znajdzie się w w katalogu domowym,
w którym znajdują się plik ```exercise.asm``` oraz plik ```test.sh```. 

Zadanie należy rozwiązywać w pliku ```exercise.asm```. 
Aby przetestować jego poprawność należy uruchomić skrypt ```test.sh```.

# Zadanie
Zadanie polega na napisaniu od zera programu w języku
Assembly, który będzie zamieniał litery z małych na wielkie.

Zakładamy, że użytkownik podaje ciągi znaków na standardowe wejście.  

Jeżeli dany znak jest już duży, program powinien go pominąć.

Program powinien obsługiwać ciągi znaków o nie większej niż 255.
Jeżeli użytkownik poda ciąg znaków o większej długości, program powinien
Wypisać na ekran informację:
```sh
Error
```


# Materiały

Link do prezentacji:  
[Click](https://www.youtube.com/watch?v=8oT-eIkLEYA)

Dodatkowe:  
[NASM Assembly tutorial](https://www.tutorialspoint.com/assembly_programming/index.htm)  
[x86-64 Assembly Language Programming with Ubuntu](http://www.egr.unlv.edu/~ed/assembly64.pdf)