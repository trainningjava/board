# Board Manager

Sistema de gerenciamento de tarefas inspirado no método Kanban, desenvolvido em Java para controle de boards, colunas e cards através de interface de linha de comando (CLI).

## Objetivo

O projeto permite criar e gerenciar boards personalizados, possibilitando o acompanhamento do fluxo de trabalho através da movimentação de cards entre colunas.

Além disso, foi desenvolvido para praticar conceitos de:

* Programação Orientada a Objetos (POO)
* Arquitetura em camadas
* JDBC
* Persistência de dados com MySQL
* Controle transacional
* Migrações de banco de dados com Liquibase

---

## Funcionalidades

### Gerenciamento de Boards

* Criar boards personalizados
* Consultar boards existentes
* Excluir boards

### Gerenciamento de Colunas

Cada board possui:

* Coluna Inicial
* Colunas intermediárias (configuráveis)
* Coluna Final
* Coluna de Cancelamento

### Gerenciamento de Cards

* Criar card
* Mover card entre colunas
* Bloquear card
* Desbloquear card
* Cancelar card
* Consultar detalhes do card

### Regras de Negócio

* Cards bloqueados não podem ser movimentados
* Cards finalizados não podem ser movimentados novamente
* Apenas cards válidos podem avançar no fluxo
* Todo bloqueio possui um motivo registrado

---

## Tecnologias Utilizadas

| Tecnologia | Finalidade                     |
| ---------- | ------------------------------ |
| Java       | Linguagem principal            |
| JDBC       | Comunicação com banco de dados |
| MySQL      | Persistência dos dados         |
| Liquibase  | Controle de versões do banco   |
| Lombok     | Redução de código boilerplate  |
| Gradle     | Gerenciamento de dependências  |

---

## Estrutura do Projeto

```text
src/main/java
│
├── dto
├── exception
├── persistence
│   ├── config
│   ├── converter
│   ├── dao
│   ├── entity
│   └── migration
│
├── service
├── ui
└── Main.java
```

### Responsabilidades

* dto → Objetos de transferência de dados
* dao → Acesso ao banco de dados
* entity → Entidades do sistema
* service → Regras de negócio
* ui → Interface de linha de comando
* migration → Controle das migrações Liquibase

---

## Como Executar

### Pré-requisitos

* Java 21 (ou versão compatível)
* MySQL
* Gradle

### Configuração

1. Criar um banco de dados MySQL.

```sql
CREATE DATABASE board_manager;
```

2. Configurar as credenciais de acesso ao banco na classe:

```java
ConnectionConfig
```

3. Executar a aplicação:

```bash
./gradlew run
```

ou

```bash
gradlew run
```

---

## Fluxo de Utilização

### Menu Principal

```text
1 - Criar Board
2 - Selecionar Board
3 - Excluir Board
4 - Sair
```

### Menu do Board

```text
1 - Criar Card
2 - Mover Card
3 - Bloquear Card
4 - Desbloquear Card
5 - Cancelar Card
6 - Ver Board
7 - Ver Coluna
8 - Ver Card
9 - Voltar
10 - Sair
```

---

## Exemplo de Fluxo

```text
Board: Desenvolvimento

Backlog
    ↓
Em Desenvolvimento
    ↓
Code Review
    ↓
Concluído
```

---

## Autor

Projeto desenvolvido para fins de estudo e prática de Java, banco de dados e arquitetura em camadas.
