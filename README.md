# 🚀 DevWeb Database Project

![SQL](https://img.shields.io/badge/SQL-Database-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange)
![Status](https://img.shields.io/badge/Status-Concluído-success)

## 📌 Sobre o Projeto

O **DevWeb Database Project** consiste na implementação de um banco de dados relacional para gerenciamento de uma empresa de desenvolvimento de software.

O sistema foi desenvolvido utilizando **MySQL** e tem como objetivo organizar informações relacionadas a:

- 👥 Clientes
- 💻 Projetos
- 👨‍💻 Desenvolvedores
- 🧩 Especialidades
- 🔗 Alocação de desenvolvedores em projetos

O projeto aborda conceitos fundamentais de Banco de Dados, como:

✅ Criação de tabelas  
✅ Chaves primárias e estrangeiras  
✅ Relacionamentos 1:N e N:N  
✅ Inserção de dados  
✅ Consultas utilizando JOIN  
✅ Atualizações de registros  
✅ Agrupamentos e filtros  

---

# 📂 Estrutura do Projeto
```
📦 DevWeb-Database
│
├── 📄 esquema devweb.sql
│ └── Criação do banco e tabelas
│
├── 📄 insert de dados.sql
│ └── Inserção dos dados iniciais
│
├── 📄 questoes de consulta.sql
│ └── Consultas e operações SQL
│
└── 📄 README.md
└── Documentação do projeto
```


---

# 🛠️ Tecnologias Utilizadas

| Tecnologia | Utilização |
|---|---|
| 🐬 MySQL | Sistema gerenciador do banco de dados |
| 📄 SQL | Linguagem para definição e manipulação dos dados |
| 🔑 Modelo Relacional | Organização das entidades e relacionamentos |

---

# 🏗️ Modelo do Banco de Dados

O banco possui as seguintes tabelas:

<details>
<summary>👥 Cliente</summary>

Responsável pelo armazenamento dos clientes da empresa.

| Campo | Descrição |
|---|---|
| cod_cliente | Identificador do cliente |
| cnpj | CNPJ da empresa |
| nome | Nome do cliente |

</details>


<details>
<summary>📁 Projeto</summary>

Armazena os projetos contratados pelos clientes.

| Campo | Descrição |
|---|---|
| id | Identificador do projeto |
| nome | Nome do projeto |
| cliente | Cliente responsável |
| data_inicio | Data inicial |
| data_fim | Data final |

</details>


<details>
<summary>👨‍💻 Desenvolvedor</summary>

Tabela com informações dos profissionais cadastrados.

| Campo | Descrição |
|---|---|
| cod_dev | Identificador do desenvolvedor |
| nome | Nome do desenvolvedor |
| custo_hora | Valor da hora trabalhada |
| especialidade | Especialidade principal |
| nivel | Junior, Pleno ou Senior |

</details>


<details>
<summary>🧩 Especialidade</summary>

Representa as áreas de conhecimento dos desenvolvedores.

Exemplos:

- Frontend
- Backend
- DevOps
- Mobile
- Web
- Python
- Java

</details>


<details>
<summary>🔗 Trabalha</summary>

Tabela associativa responsável pelo relacionamento entre desenvolvedores e projetos.

Relacionamento:
Desenvolvedor N : N Projeto

Um desenvolvedor pode atuar em vários projetos e um projeto pode possuir vários desenvolvedores.

</details>


<details>
<summary>⭐ Especializa</summary>

Tabela responsável pelo relacionamento entre desenvolvedores e suas especialidades.

Relacionamento:
Desenvolvedor N : N Especialidade

Permite que um profissional possua múltiplas especializações.

</details>

---

# 📊 Diagrama Simplificado
             CLIENTE
                |
                | 1:N
                |
             PROJETO
                |
                | N:N
                |
            TRABALHA
                |
                |
         DESENVOLVEDOR
                |
                | N:N
                |
          ESPECIALIZA
                |
                |
         ESPECIALIDADE

---

# ▶️ Como Executar

## 1️⃣ Criar a estrutura do banco

Execute primeiro:

```sql
esquema devweb.sql
```
Este arquivo realiza:
- Criação do banco devweb;
- Criação das tabelas;
- Definição das chaves primárias;
- Definição dos relacionamentos.

## 2️⃣ Inserir dados

Execute:
```sql
insert de dados.sql
```
Serão adicionados:

| Entidade | Quantidade|
|---|---|
| Clientes | 5 |
| Especialidades | 7 |
| Desenvolvedores | 7 |
| Projetos | 6 |
| Alocações | 7 |

## 3️⃣ Executar consultas

Execute:
```sql
questoes de consulta.sql
```
O arquivo contém consultas para:

- 🔎 Buscar projetos por cliente;
- 👨‍💻 Listar desenvolvedores de projetos;
- 🧩 Filtrar profissionais por especialidade;
- 📈 Consultar múltiplas especializações;
- 💰 Atualizar custo/hora;
- 🚀 Evoluir nível profissional.
- 🔍 Exemplos de Consultas

Buscar projetos de um cliente
```sql
SELECT 
    p.nome AS projeto_nome,
    c.nome AS cliente_nome
FROM projeto p
JOIN cliente c 
ON p.cliente = c.cod_cliente
WHERE c.nome = 'GelaHomer';
```

Buscar desenvolvedores do projeto "Sistema Financeiro"
```sql
SELECT 
    d.nome,
    d.custo_hora,
    d.nivel,
    e.nome AS especialidade
FROM dev d
JOIN especialidade e 
ON d.especialidade = e.cod_especialidade
JOIN trabalha t 
ON d.cod_dev = t.cod_dev
JOIN projeto p 
ON t.id_projeto = p.id
WHERE p.nome = 'Sistema Financeiro';
```

Atualizar custo do desenvolvedor
```sql
UPDATE dev
SET custo_hora = custo_hora * 1.1
WHERE cod_dev = 1;
```

Resultado:
```
Aumento de 10% no valor/hora do desenvolvedor selecionado.
```

📚 Conceitos Aplicados

- Modelagem Relacional
- Normalização de dados
- Integridade referencial
- Chaves primárias
- Chaves estrangeiras
- Relacionamentos muitos-para-muitos
- Consultas SQL avançadas
- Manipulação de registros

👨‍💻 Autor
Tecla Fernandes

Projeto desenvolvido para prática de Banco de Dados utilizando SQL/MySQL.

```
Essa versão fica mais interessante para um repositório no GitHub porque não parece apenas um trabalho acadêmico: ela apresenta o projeto como um pequeno sistema de banco de dados documentado.
```
