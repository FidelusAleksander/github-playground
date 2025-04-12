# GitHub Playground

This repository serves as a testing ground for various GitHub features and integrations. It contains different components to experiment with GitHub's capabilities, security features, and development workflows.

## Repository Structure


```
.
├── backend/          # Python backend scripts
├── codeql/          # CodeQL security analysis configuration
├── docs/            # Documentation files
├── infra/           # Infrastructure configuration
├── queries/         # Custom CodeQL queries
└── src/             # Source code directory
```

## Components

### Backend
- Python-based backend scripts
- Requirements management via `requirements.txt`

### Security
- CodeQL integration for security analysis
- Custom security queries
- Security policy documentation

### Infrastructure
- Configuration management via JSON
- Infrastructure setup templates

## Getting Started

1. Clone the repository:
```bash
git clone https://github.com/[username]/github-playground.git
```

2. For Python backend:
```bash
cd backend
pip install -r requirements.txt
```

## Features Being Tested

- GitHub Actions workflows
- CodeQL security scanning
- Infrastructure configurations
- Custom security queries
- Documentation workflows

## Code Examples

### Python Backend
Example of a Python script that demonstrates command execution (with potential security implications):

```python
# backend/main.py
import os

def execute_command(command):
    os.system(command)

user_input = input("Enter a command to execute: ")
execute_command(user_input)
```

### CodeQL Security Analysis
Example of a CodeQL configuration:

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

### Simple Python Functions
Example of a basic Python function with type variations:

```python
# backend/script.py
def func(x):
    if x > 0:
        return x
    else:
        print(1)
    return "y"
```

These examples demonstrate:
- Command execution patterns (potential security risks)
- CodeQL security scanning configuration
- Basic Python function implementations
- Type handling and control flow

## Security

See [SECURITY.md](SECURITY.md) for security policies and procedures.

## License

This project is intended for testing purposes. See repository license for details.

## Contributing

This is a personal testing repository. Feel free to fork and experiment on your own!
