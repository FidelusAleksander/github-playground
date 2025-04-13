# GitHub Playground

To repozytorium służy jako poligon testowy dla różnych funkcji i integracji GitHub. Zawiera różne komponenty do eksperymentowania z możliwościami GitHub, funkcjami bezpieczeństwa oraz przepływami pracy związanymi z rozwojem oprogramowania.

## Struktura Repozytorium

```
.
├── backend/          # Skrypty backendowe w Pythonie
├── codeql/           # Konfiguracja do analizy bezpieczeństwa przy użyciu CodeQL
├── docs/             # Pliki dokumentacji
├── infra/            # Konfiguracja infrastruktury
├── queries/          # Niestandardowe zapytania CodeQL
└── src/              # Główne katalog źródłowy
```

## Komponenty

### Backend
- Skrypty backendowe oparte na Pythonie
- Zarządzanie wymaganiami za pomocą pliku `requirements.txt`

### Bezpieczeństwo
- Integracja CodeQL do analizy bezpieczeństwa
- Niestandardowe zapytania związane z bezpieczeństwem
- Dokumentacja polityki bezpieczeństwa

### Infrastruktura
- Zarządzanie konfiguracją w formacie JSON
- Szablony do konfiguracji infrastruktury

## Jak Zacząć

1. Sklonuj repozytorium:
```bash
git clone https://github.com/[username]/github-playground.git
```

2. W przypadku backendu Python:
```bash
cd backend
pip install -r requirements.txt
```

## Funkcje Testowane

- Przepływy pracy z GitHub Actions
- Skanowanie bezpieczeństwa przy użyciu CodeQL
- Konfiguracje infrastruktury
- Niestandardowe zapytania bezpieczeństwa
- Przepływy pracy związane z dokumentacją

## Przykłady Kodów

### Backend Python
Przykład skryptu w Pythonie, który demonstruje wykonywanie poleceń (z potencjalnymi implikacjami związanymi z bezpieczeństwem):

```python
# backend/main.py
import os

def execute_command(command):
    os.system(command)

user_input = input("Enter a command to execute: ")
execute_command(user_input)
```

### Analiza Bezpieczeństwa z CodeQL
Przykład konfiguracji CodeQL:

```yaml
# codeql/codeql-config.yml
name: "CodeQL config"
queries:
  - uses: security-extended
  - uses: ./queries/command_injection.ql
paths-ignore:
  - tests
  - lib
disable-default-queries: true
```

### Proste Funkcje w Pythonie
Przykład podstawowej funkcji w Pythonie z różnymi wariantami typów:

```python
# backend/script.py
def func(x):
    if x > 0:
        return x
    else:
        print(1)
    return "y"
```

Te przykłady demonstrują:
- Wzorce wykonywania poleceń (potencjalne ryzyko bezpieczeństwa)
- Konfigurację do skanowania bezpieczeństwa w CodeQL
- Podstawowe implementacje funkcji w Pythonie
- Obsługę typów oraz przepływ kontroli

## Bezpieczeństwo

Zobacz [SECURITY.md](SECURITY.md) w celu uzyskania informacji o politykach i procedurach bezpieczeństwa.

## Licencja

Ten projekt jest przeznaczony do celów testowych. Szczegóły licencji znajdują się w repozytorium.

## Współtworzenie

To jest osobiste repozytorium testowe. Możesz swobodnie forknąć i eksperymentować na własne potrzeby!
