## Automação de Testes para o Web-Site

Este documento tem como finalidade demonstrar a configuração das ferramentas necessárias para rodar os testes automatizados feitos para o Web-Site

### Ferramentas Utilizadas:

Robot Framework

Visual Studio Code + Plugins

### Configurando cada ferramenta

**Robot Framework**

O Robot Framework é um framework orientado a palavras-chave. Por padrão ele já possui diversos comandos embutidos (https://robotframework.org/?tab=builtin#resources) e também bibliotecas externas disponíveis para uso, como o Selenium, Browser(Essa é a biblioteca usada nessas automações), Appium, etc.

Necessário que seja feito a instalação do Python, de preferência da 3.7 em diante, através do site oficial do Python (https://www.python.org/downloads/). Após instalado, abrir o cmd e executar o comando `pip install robotframework`

OBS: Recomendado adicionar a pasta do Python a variável PATH do Windows para executar o comando `pip` sem erros.

No site do Robot Framework é possível verificar as bibliotecas desenvolvidas para ele (https://robotframework.org/#resources), com nome e link da biblioteca, descrição, avaliação da comunidade e tag. Vamos utilizar algumas bibliotecas ao decorrer dos testes, as mesmas estão listadas abaixo, onde está o link da Library e uma breve explicação da mesma. No link é possivel acessar as Keywords e Documetnação. Para instalar alguma biblioteca, utilizar o comando no cmd `pip install --upgrade nome_da_library`

Browser Library (https://marketsquare.github.io/robotframework-browser/Browser.html#library-documentation-top) com essa Library enviada pelos deuses da programação(AMEM) não,
REPITO, NÃO precisamos nos preucupar com Drives de navegadores, pois essa lib usa o Playrith que acontece de uma forma diferente, onde a mesma traz consigo o Chromiun.

Json Library https://github.com/robotframework-thailand/robotframework-jsonlibrary usaremos para o tratamento dos Jasons

Request Library https://github.com/MarketSquare/robotframework-requests usaremos para a validação das API´s

**Visual Studio Code + Plugins**

Instalação normal do VS Code ou outro editor de sua escolha. Para ele, recomendo as extensões abaixo:

![image](https://user-Images.githubusercontent.com/106326116/170515960-3a7fff91-186c-4034-934a-2b5e5e9a9e31.png)

![image](https://user-Images.githubusercontent.com/106326116/170516081-38a9a3a7-4434-4f0f-8377-7d2fb925b317.png)

### O Projeto

O projeto está estrurado em arquivos com a extensão .robot em duas pastas:

Resources = Ações de cada um das telas e botões do Web-Site, e também um arquivo base.robot.

Tests = Casos de testes referentes as telas e fluxos do Web-Site

Para executar os arquivos de testes, executar o comando abaixo:

```
robot -d ./logs tests/nome_do_arquivo.robot
```

Onde:

-d ./results_logs = define onde será criado o arquivo de relatórios do robot, que será dentro da pasta Logs.

tests/nome_do_arquivo.robot = local do arquivo de testes dentro da pasta tests. Deixar o nome em branco caso for executar todos de uma vez.
