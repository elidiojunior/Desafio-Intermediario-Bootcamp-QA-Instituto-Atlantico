# Seu Barriga!

[![Github Badge](https://img.shields.io/badge/-Github-000?style=flat-square&logo=Github&logoColor=white&link=https://github.com/elidiojunior/Demoday---QAlegria)](https://github.com/elidiojunior/Demoday---QAlegria)

Olá, conheça o [Sr. Barriga](https://seubarriga.wcaquino.me/login), um app revolucionário que vai ajudá-lo a manter suas finanças em dia.

## Introdução

A equipe da BigBelly Tech deseja incrementar sua capacidade de controle de qualidade a fim de evitar que bugs atinjam seus clientes.

A fim de salvar capacidade de seus QA’s para que atuem em cenários de maior complexidade, BBT decidiu implementar Automação de Testes End to End em sua plataforma web e agora precisa da sua ajuda para desenvolver.

## Descrição do Projeto

- Desenhe, utilizando Gherkin, 11 cenários de testes. Defina a prioridade que cada um desses cenários tem, avaliando a severidade (Probabilidade x Impacto) de um bug ocorrer;
- Automatize a execução de pelo menos 10 dos cenários acima;
- BÔNUS: Encontre um cenário que apresente um erro, automatize esse cenário para que o report denuncie uma falha na aplicação;

## Funcionalidade a serem testadas
Realizamos os testes das seguintes funcionalidades: 
- Realizar Cadastro de Usuário
- Realizar Login de Usuário
- Adicionar Contas
- Criar movimentação
- Resumo mensal
- Realizar Reset

## Definição de Prioridade

Definição da prioridade dos cenários, avaliando a severidade (Probabilidade x Impacto) de um bug ocorrer. 

Foi utilizado a **matriz de riscos** como ferramenta para nos auxiliar na visualização da probabilidade de um determinado bug ocorrer no cenário testado e o impacto que poderia causar.

	     	   _________________________________________
              |              PROBABILIDADE              |
              |_________________________________________|____
              |  * BAIXA *  |  * MÉDIA *  |   * ALTA *  | I  |
     _________|_____________|_____________|_____________| M  |
     * ALTO * |    Média    |    Alta     |     Alta    | P  |
     _________|_____________|_____________|_____________| A  |
    * MÉDIO * |    Baixa    |    Média    |     Alta    | C  |
     _________|_____________|_____________|_____________| T  |
    * BAIXO * |    Baixa    |    Baixa    |    Média    | O  |
     _________|_____________|_____________|_____________|____|

## Casos de Teste (Planejamento)

 ### 1 - Realizar Cadastro de Usuário
 #### Cenário - Criar um novo usuário com sucesso
 **Objetivo:** Cadastrar com sucesso um novo usuário <br/>
 **Prioridade:** Alta <br/>
 **Resultado Esperado:** O sistema deve mostrar ao agora, usuário, a seguinte mensagem: "Usuário inserido com sucesso" e direcionar o usuário para a tela de login
 
 #### Cenário - Tentar criar um usuário já cadastrado
 **Objetivo:** Não realizar cadastro com email já cadastrado <br/>
 **Prioridade:** Média <br/>
 **Resultado Esperado:** Sistema deve mostrar um mensagem de erro, "Endereço de email já utilizado e não deve permitir a criação de um novo usuário
 
### 2 - Realizar Login de Usuário
 #### Cenário - Login com sucesso
**Objetivo:** Acessar o sistema <br/>
**Prioridade:** Alta <br/>
**Resultado Esperado:** O usuário deve conseguir realizar o login, visualizar na tela uma mensagem de boas vindas e ver a tela principal da ferramenta.

 #### Cenário - Usuário tentar realizar login sem está cadastrado
 **Objetivo:** Acessar o sistema sem está cadastrado <br/>
 **Prioridade:** Alta <br/>
 **Resultado Esperado:** Sistema não deve permitir o login do usuário caso não esteja cadastrado.
 
### 3 - Adicionar Contas
 #### Cenário - Adicionar conta
 **Objetivo:** Realizar a criação de uma conta com sucesso <br/>
 **Prioridade:** Baixa <br/>
 **Resultado Esperado:** Sistema deve criar uma conta para movimentações.
 
 #### Cenário - Adicionar conta sem sucesso
 **Objetivo:** Realizar a criação de uma conta com o mesmo nome de uma conta anterior <br/>
 **Prioridade:** Média <br/>
 **Resultado Esperado:** Sistema não deve permitir a criação de uma conta com o mesmo nome já cadastrado anteriormente.
  
 ### 4 - Excluir Contas
 #### Cenário - Excluir conta
 **Objetivo:** Realizar a exclusão de uma conta <br/>
 **Prioridade:** Baixa <br/>
 **Resultado Esperado:** Sistema deve permitir a exclusão da conta com sucesso.
 
 ### 5 - Criar Movimentação
 #### Cenário - Criar Movimentação
 **Objetivo:** Realizar a criação de uma movimentação atrelada a uma conta criada anteriormente <br/>
 **Prioridade:** Baixa <br/>
 **Resultado Esperado:** Sistema deve realizar a criação de uma movimentação que irá aparecer no Resumo Mensal.
 
 ### 6 - Resumo mensal
 #### Cenário - Excluir movimentação
 **Objetivo:** Realizar a exclusão de movimentação <br/>
 **Prioridade:** Alta <br/>
 **Resultado Esperado:** Sistema deve realizar a exclusão da movimentação escolhida.
 
 ### 7 - Realizar Reset
 #### Cenário - Reset com sucesso
 **Objetivo:** Realizar o reset dos dados das contas <br/>
 **Prioridade:** Alta <br/>
 **Resultado Esperado:** Apresenta falha na aplicação, pois ao clicar no botão do reset, espera-se que os dados das contas da tela do home sejam zerados ao serem resetados com sucesso, porém os dados permanecem os mesmos sem nenhuma alteração apesar de apresentar o alerta de sucesso "Dados resetados com sucesso!"

## Instalação
Para que seja possível iniciar o projeto, precisa ser realizada a preparação do ambiente no Windows para a execução do código.

#### 1. Instalação do Python e pip
-   Baixe o [Python](https://www.python.org/downloads/);
-   Instale via executável o Python. OBS.: Defina a variável de ambiente durante a instalação ou, edite manualmente as variáveis e adicione: 

<h5>
    <p align="center">C:\Python27\;C:\Python27\Scripts</p>
</h5>

- Para verificar se a instalação deu certo, no prompt de comando (cmd) execute: <br/>
	``python --version``  <br/>
	``pip -- version`` 
			
#### 2. Instalando o Robot Framework
-   Execute no prompt de comando (cmd) o seguinte comando para a instalação do robot framework:  
    ``pip install robotframework`` 
-   Para verificar se a instalação deu tudo certo no prompt de comando (cmd) execute:  
    ``robot --version``
    
Leia o [manual](https://code.google.com/archive/p/robotframework/wikis/Installation.wiki) para mais informações sobre a instalação e configuração do ambiente que você irá precisar.

#### 3. Instalando a Selenium Library
-   Execute no prompt de comando (cmd) o seguinte comando para a instalação do robot framework:  
    ``pip install robotframework-seleniumlibrary`` 
    
#### 4. Instalando a Faker Library
-   Execute no prompt de comando (cmd) o seguinte comando para a instalação do robot framework:  
    ``pip install robotframework-faker`` 

#### 5. Editores e Plugins
Depois de realizada toda a instalação e configuração do Python, Pip e Robot framework, você precisará de um editor ou plugin para a escrita do código. 
Os editores mais conhecidos que têm plugins para o Robot Framework:

-   PyCharm
-   Eclipse
-   Atom
-   Visual Studio Code
-   Sublime

Para saber saber mais sobre os plugins que não estão nessa lista confira a sessão **Editors** do site oficial do [Robot Framework](https://robotframework.org/#tools) 🇺🇦

## Execução
Para realizar a execução do projeto pode uitlizar uma das duas formas apresentadas abaixo.

-  Executar arquivo .bat que se encontra na pasta do projeto
-  Abrir o terminal de comando na pasta do projeto e executar o codigo:
   ``robot -N "Seu Barriga" -d results tests``

## LinkedIn

![Linkedin Elídio](https://media-exp1.licdn.com/dms/image/C5103AQGteC0KO_GhZQ/profile-displayphoto-shrink_200_200/0/1542375216422?e=1674691200&v=beta&t=jHDnfra0bxrXhQnKeHM5N8KvYyIrl1AIeJgoT33FE90)
[![Linkedin Badge Ana](https://img.shields.io/badge/-LinkedIn-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/el%C3%ADdio-j%C3%BAnior-0405a8107/)](https://www.linkedin.com/in/el%C3%ADdio-j%C3%BAnior-0405a8107/)
