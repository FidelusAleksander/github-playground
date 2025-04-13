# GitHub Playground

[![en](https://img.shields.io/badge/lang-en-red.svg)](README.md)  
[![pl](https://img.shields.io/badge/lang-pl-green.svg)](docs/README.pl.md)  
[![es](https://img.shields.io/badge/lang-es-yellow.svg)](docs/README.es.md)  
[![zh](https://img.shields.io/badge/lang-zh-blue.svg)](docs/README.zh.md)  

此代码库是一个用于测试各种 GitHub 功能和集成的实验场所。它包含不同的组件，用于尝试 GitHub 的功能、安全特性以及开发工作流程。

## 代码库结构

```
.
├── backend/          # Python 后端脚本
├── codeql/          # CodeQL 安全分析配置
├── docs/            # 文档文件
├── infra/           # 基础设施配置
├── queries/         # 自定义 CodeQL 查询
└── src/             # 源代码目录
```

## 快速开始

1. 克隆代码库:
```bash
git clone https://github.com/[username]/github-playground.git
```

2. 针对 Python 后端：
```bash
cd backend
pip install -r requirements.txt
```

## 测试的功能

- GitHub Actions 工作流  
- CodeQL 安全扫描  
- 基础设施配置  
- 自定义安全查询  
- 文档工作流程  

## 代码示例

### Python 后端
演示命令执行的 Python 脚本示例（可能存在安全隐患）：

```python
# backend/main.py
import os

def execute_command(command):
    os.system(command)

user_input = input("Enter a command to execute: ")
execute_command(user_input)
```

### CodeQL 安全分析
CodeQL 配置示例：

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

### 简单 Python 函数
基本 Python 函数的示例，包含不同的类型处理：

```python
# backend/script.py
def func(x):
    if x > 0:
        return x
    else:
        print(1)
    return "y"
```

这些示例展示了：
- 命令执行模式（可能的安全风险）  
- CodeQL 安全扫描配置  
- 基本 Python 函数实现  
- 类型处理和控制流  

## 安全

查看 [SECURITY.md](SECURITY.md) 了解安全策略和程序。

## 许可证

该项目仅用于测试目的。有关详情，请参见代码库许可证。

## 贡献

这是一个个人测试代码库。欢迎分叉代码库并自行尝试！
