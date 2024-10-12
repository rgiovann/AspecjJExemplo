# Exemplo AspectJ - Programação Orientada a Aspectos (AOP) em Java

Este projeto é um exemplo de **Programação Orientada a Aspectos** (AOP) usando **AspectJ** e **Logback** para realizar **logging** em operações bancárias simuladas. Ele demonstra como os **aspectos** podem ser usados para interceptar chamadas a métodos e aplicar comportamento adicional, como registro de logs, sem modificar diretamente o código original da aplicação.

## Funcionalidades

- Simula uma conta bancária com operações de saque.
- Utiliza **AspectJ** para interceptar e registrar as operações de saque, mostrando o saldo antes e depois das transações.
- Implementa **SLF4J** e **Logback** para gerenciamento e exibição dos logs.

## Estrutura do Projeto

- **`Account.java`**: Classe que simula uma conta bancária, com métodos de saque.
- **`AccountAspect.aj`**: Aspecto que intercepta as chamadas ao método `withdraw` e gera logs antes, durante e após a execução.
- **`ExemploAspectJ.java`**: Classe principal que executa o programa, realizando saques na conta para demonstrar o funcionamento do AspectJ.
- **`logback.xml`**: Arquivo de configuração do **Logback**, que define como e onde os logs serão exibidos.

## Tecnologias Utilizadas

- **Java 20**
- **AspectJ** (para a implementação da AOP)
- **SLF4J** (abstração de logging)
- **Logback** (implementação concreta de logging)
- **Maven** (para gerenciamento de dependências e build)

## Referência

Este projeto foi inspirado no artigo da **Baeldung** sobre AspectJ, que fornece uma ótima introdução e exemplos práticos sobre a utilização da Programação Orientada a Aspectos em Java. Confira o artigo completo [aqui](https://www.baeldung.com/aspectj).

## Pré-requisitos

- **JDK 20** ou superior instalado.
- **Maven** instalado.
- **IntelliJ IDEA** ou **NetBeans** (ou qualquer IDE compatível com Maven).

## Como Executar

### No IntelliJ IDEA

1. Clone o repositório para o seu ambiente local.
2. Abra o projeto no IntelliJ IDEA.
3. Verifique se o plugin **AspectJ** está instalado e habilitado na IDE.
4. Certifique-se de que o `pom.xml` está configurado corretamente e o Maven baixou todas as dependências.
5. Execute o método principal na classe `ExemploAspectJ.java`.

### No NetBeans

1. Clone o repositório para o seu ambiente local.
2. Abra o projeto no NetBeans.
3. Certifique-se de que o Maven baixou todas as dependências corretamente.
4. Execute o projeto com `mvn clean install exec:java` ou diretamente pelo botão de "Run".

## Exemplo de Saída de Log

Quando o projeto é executado, você verá a seguinte saída no console (no NetBeans):

```plaintext
Instanciando class Account :
09:48:35.156 [main] INFO posgrad.utfpr.edu.br.exemploaspectj.AccountAspect --  [AspectJ] Balance before withdrawal: 20
09:48:35.161 [main] INFO posgrad.utfpr.edu.br.exemploaspectj.AccountAspect --  [AspectJ] Withdraw amount: 5
09:48:35.161 [main] INFO posgrad.utfpr.edu.br.exemploaspectj.AccountAspect --  [AspectJ] Balance after withdrawal : 15
09:48:35.161 [main] INFO posgrad.utfpr.edu.br.exemploaspectj.AccountAspect --  [AspectJ] Balance before withdrawal: 5
09:48:35.161 [main] INFO posgrad.utfpr.edu.br.exemploaspectj.AccountAspect --  [AspectJ] Withdraw amount: 39
09:48:35.161 [main] INFO posgrad.utfpr.edu.br.exemploaspectj.AccountAspect --  [AspectJ] Withdrawal Rejected!
09:48:35.161 [main] INFO posgrad.utfpr.edu.br.exemploaspectj.AccountAspect --  [AspectJ] Balance after withdrawal : 5

