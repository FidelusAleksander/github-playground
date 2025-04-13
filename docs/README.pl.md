# GitHub Playground

[![en](https://img.shields.io/badge/lang-en-red.svg)](README.md)  
[![pl](https://img.shields.io/badge/lang-pl-green.svg)](docs/README.pl.md)  
[![es](https://img.shields.io/badge/lang-es-yellow.svg)](docs/README.es.md)  
[![zh](https://img.shields.io/badge/lang-zh-blue.svg)](docs/README.zh.md)

To repozytorium służy jako pole testowe dla różnych funkcji i integracji GitHub. Zawiera różne komponenty do eksperymentowania z możliwościami GitHub, funkcjami bezpieczeństwa oraz przepływami pracy programistycznej.

## Struktura Repozytorium

```
.
├── backend/          # Skrypty backendowe w Pythonie
├── codeql/           # Konfiguracja analizy bezpieczeństwa CodeQL
├── docs/             # Pliki dokumentacji
├── infra/            # Konfiguracja infrastruktury
├── queries/          # Niestandardowe zapytania CodeQL
└── src/              # Katalog z kodem źródłowym
```

## Rozpoczęcie pracy

1. Sklonuj repozytorium:  
```bash
git clone https://github.com/[username]/github-playground.git
```

2. Dla backendu w Pythonie:  
```bash
cd backend
pip install -r requirements.txt
```

## Testowane funkcje

- Przepływy pracy GitHub Actions  
- Skanowanie bezpieczeństwa CodeQL  
- Konfiguracje infrastruktury  
- Niestandardowe zapytania bezpieczeństwa  
- Przepływy pracy dokumentacyjne  

## Przykłady kodu

### Backend w Pythonie  
Przykładowy skrypt w Pythonie, który demonstruje wykonanie komendy (z potencjalnymi implikacjami bezpieczeństwa):

```python
# backend/main.py
import os

def execute_command(command):
    os.system(command)

user_input = input("Enter a command to execute: ")
execute_command(user_input)
```

### Analiza bezpieczeństwa CodeQL  
Przykładowa konfiguracja CodeQL:

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

### Proste funkcje Pythona  
Przykład podstawowej funkcji w Pythonie z wariacjami typów:

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
- Wzorce wykonania komend (potencjalne ryzyko bezpieczeństwa)  
- Konfigurację skanowania bezpieczeństwa CodeQL  
- Podstawowe implementacje funkcji w Pythonie  
- Obsługę typów i kontrolę przepływu  

## Bezpieczeństwo

Zobacz [SECURITY.md](SECURITY.md) w celu zapoznania się z polityką i procedurami bezpieczeństwa.

## Licencja

Ten projekt jest przeznaczony do celów testowych. Zobacz licencję repozytorium, aby uzyskać szczegóły.

## Współpraca

To osobiste repozytorium testowe. Śmiało możesz je rozwidlać i eksperymentować na własną rękę!  
