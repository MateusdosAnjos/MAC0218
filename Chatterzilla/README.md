# Chatterzilla

Aplicação web no estilo do antigo Microsoft Messenger, onde os usuários criam suas contas, adicionam amigos e trocam mensagens instantâneas diretamente ou em grupos de conversa.

| Nome 							  |	NUSP    |
|---------------------------------|---------|
| Mateus Agostinho dos Anjos	  |	9298191 |
| Victor Domiciano Mendonça		  |	8641963 |
| Nícolas Nogueira Lopes da Silva |	9277541 |

## Dependências do projeto

* Ruby v. 2.5.0
* Rails v. 5.1.4
* sqlite3

## Manual de instalação

### Instalando dependências do Ruby

```
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs yarn
```

### Instalando Ruby v. 2.5.0

```
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 2.5.0
rbenv global 2.5.0
ruby -v
```

### Instalando bundler

Bundler é um programa que garante que todas as bibliotecas necessárias para a aplicação estejam instaladas.

```
gem install bundler
rbenv rehash
```

### Instalando Rails v. 5.1.4

```
gem  install  rails -v 5.1.4
rbenv  rehash
```

### Para utilizar o projeto pela primeira vez

Instalando as dependências do projeto

```
bundle install
```

Criando o banco de dados

```
rake db:create
rake db:migrate
```

Obs.: Caso já tenha sido utilizado o projeto, será necessário executar o comando
```
rake db:drop
```
para deletar o banco de dados já existente.


Inicializar servidor

```
rails s
```

## Manual de utilização

Para logar é necessário criar uma conta utilizando o botão "Sign up now!". Criada a conta, para visualizar a lista de usuários basta clicar em Users na barra de navegação superior. Com a lista de usuários, basta clicar em "Open chat with" para abrir uma caixa de mensagens na parte direita, centralizado verticalmente na tela, assim é possível conversar com outro usuário (como o nosso chat não está em tempo real ainda, é necessário atualizar a página para visualizar possíveis novas mensagens vindas de outros usuários). 

## Testes

No projeto ja foram incluídos os testes relacionados à implementação de usuários no sistema.

Para rodar os testes

```
rails test
```

## Funcionalidades a serem implementadas

* chat em tempo real
* implementar contatos
* testes envolvendo o funcionamento do chat