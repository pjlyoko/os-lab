# Laboratorium 3: Operacje na drzewach katalogów, przetwarzanie potokowe (skrypty z wykorzystaniem `find`)

- `find` nie jest jedyny, ale najlepszy i najbardziej rozpowszechniony.
- `find` ma kilka niuansów: katalog lub lista katalogów są rdzeniami, na których `find` ma operować, a potem są opcje.
- Opcje tworzą razem pewne _wyrażenie_ testowane na każdym obiekcie w drzewie – według reguł **logicznych** z języka C/C++.
- Jedną z opcji jest `-print` (domyślnie ma wartość `true`, dlatego w `-print -and coś` wartość `coś` będzie sprawdzane, ale w `coś -and -print` jeśli wartość `coś` będzie fałszywe, `-print` się nie wykona).
- Trzeba pamiętać, aby w findzie zawsze była jakaś _akcja_ — jeśli jej nie ma, `find` nie będzie „niczego” robić. Ponieważ było to częstym problemem dyskusji, opcja `-and -print` jest dopisywana automatycznie; mimo tego należy tę akcję dopisywać podczas laboratorium.
- W opcjach może być wiele akcji — jeśli jakaś jest zdefiniowana, `-print` nie jest dopisywane.
- `find` przechodzi po drzewie fizycznym (dlatego nie analizuje wskazań symlinków, ale same symlinki); zachowanie to można zmienić.
- 

## Zadanie 1.
W zadanym drzewie katalogów znaleźć pliki regularne, do których (1) są gdzieś (wszystko jedno gdzie) dowiązania twarde oraz (2) takie, że właściciel **nie ma** prawa odczytu, a ktoś (dowolnie czy grupa, czy inni) ma prawo zapisu.

## Zadanie 2.
W zadanym drzewie katalogów znaleźć pliki regularne mające taką samą nazwę; jeżeli dana nazwa występuje tylko raz, to nie wyświetlać jej w ogóle.
