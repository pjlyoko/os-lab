# Laboratorium 2: Operacje na dowiązaniach symbolicznych i twardych

- Dowiązanie symboliczne „liczy się” od miejsca, w którym się ono znajduje.
- „Wyciągnięcie” ścieżki z dowiązania — `readlink`. Opcja `-f` pozwala uzyskać **ścieżkę kanoniczną** – bezwzględną bez żadnych dowiązań, z dokładnością do obiektu.
- Trzeba analizować ścieżki kanoniczne, aby móc analizować, czy 2 pliki są takie same.
- W przypadku dowiązań twardych trzeba porównywać numery **i-węzłów**, przy czym pliki muszą być w tym samym systemie plików. Jeśli nie musi tak być, to warto sprawdzić także ilość dowiązań do plików (trochę na piechotę).
- Można także sprawdzać numery systemów plików, ale to rozwiązanie **nie jest pewne**.

## Zadanie 1.
W zadanym katalogu wszystkie dowiązania twarde do plików regularnych w tym samym katalogu zamienić na dowiązania symboliczne (z wyjątkiem samych plików).

## Zadanie 2.
Dla zadanych 2 katalogów kopiujemy zawartość 1. do 2., ale tak, aby dowiązania symboliczne z 1. pozostały dowiązaniami symbolicznymi w 2. i były wciąż poprawne.
