# Laboratorium 4: Potokowe przetwarzanie strumieni tekstowych (`grep`, `awk`)

- Przetwarzanie potokowe: wprowadzamy komendę, znak _pipe'a_ (`|`), (`g`)`awk`
- `awk` przetwarza _strumień rekordów_: opis jak przetwarzać linia po linii, rekord po rekordzie
- można ustalić, co jest końcem rekordu, linii — ale raczej `awk` należy użyć do przetwarzania linii (do takich zastosowań lepiej użyć `sed`)
- jest bardziej efektywny w przetwarzaniu potokowym (przy przetwarzaniu linia po linii, gorzej w przetwarzaniu całego tekstu)
- `awk` obsługuje _wyrażenia regularne_, co jest dużym ułatwieniem: podajemy warunek (aktywator; w slashach (`/`) podajemy wyr. reg), a następnie _akcję_ w nawiasach klamrowych (`{}`)
- zwykle pisze się programy tak, aby dany rekord spełniał dokładnie jeden aktywator; jeśli spełnione jest więcej aktywatorów, uruchamiane są one od lewej do prawej
- rekord dzieli się na pola (separatorem jest zwykle `/[ ]*/` (dowolna ilość białych znaków)); używanie: `$0` — rekord, `$i` — i-te pole; **znak `$` używany jest inaczej niż w bashu!**
- zmienne `awk'a` po prostu są, nie deklaruje się ich, zachowują się podobnie do zmiennych z C/C++
- przykładowe predefiniowane zmienne: _field separator_ `FS`, _record separator_ `RS`, _output field separator_ `OFS`, _output record separator_ `ORS`; _number of fields_ `NF`
- `BEGIN`, `END` - aktywatory akcji do wykonania odpowiednio przed wykonaniem polecenia i po wykonaniu polecenia; `BEGIN` jest najlepszym miejscem do zmienienia predefiniowanych zmiennych (np. zmienić `FS`), inicjowania zmiennych; `END` jest dobrym miejscem np. do wypisania liczby pól
- `$NF` — ostatnie pole (zostanie podstawione `NF`, potem wykonane `$___`)
- **cały program `awk` należy podać w pojedynczych apostrofach (`'`)**, aby uniknąć jego interpretacji przez powłokę; lepiej zatem nie używać tych apostrofów w treści programu


## Zadanie 1. `find` + `awk`
W zadanym drzewie katalogów policz wszystkie pliki regularne mające taką samą literę na początku i końcu.

## Zadanie 2.
W zadanym drzewie katalogów znajdź pliki nazywające się tak samo jak katalogi, w których się znajdują.
