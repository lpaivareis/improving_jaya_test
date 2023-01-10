# Detalhes do projeto

## Objetivo

Este projeto é uma pequena integração com o github issues para receber uma evento de webhook do github e criar em um banco de dados local, e expor um endpoint para listar todos as issues do repositório.

## Configuração

Este projeto roda em **Ruby** na versão`3.0.2` utilizando **Rails** `7.0.4`. Se precisar você pode utilizar um gerenciador de versões para facilitar como o [ASDF](https://www.lucascaton.com.br/2020/02/17/instalacao-do-ruby-do-nodejs-no-ubuntu-linux-usando-asdf).

Neste projeto, estamos usando o SQlite, se você precisar alterá-los para rodar em sua maquina local, você pode fazê-lo em [database.yml](config/database.yml).

Para executar o projeto siga os passos a abaixo:

```console
$ bundle install
$ bin/rails db:create && db:migrate
$ bin/rails server
```

Para testes foi utilizado o RSpec e as gems shoulda-matchers, Faker e FactoryBot, caso queiram executar os testes da aplicação utilize o comando abaixo:

```console
$ bin/rails db:migrate RAILS_ENV=test
$ bundle exec rspec
```

Para qualidade de código e linter foi utilizado as gems rubocop, rubocop-rails, rubocop-rspec e rubocop-performance. Você pode executar utilizando o comando abaixo:

```console
$ bundle exec rubocop
```

OBS: Foi feito algumas configurações personalizadas elas estão em [.rubocop.yml](.rubocop.yml)alterá-los para rodar em sua maquina local, você pode fazê-lo em [database.yml](config/database.yml).

## Testes com o GitHub

Para testar com o GitHub você precisar ter instalado em sua maquina o [NGROK](https://ngrok.com/download).

Depois de instalado o NGROK voce pode inicia-lo no seu terminal usando o comando abaixo:

```console
$ ngrok http 3000
```

Após a inicialização do NGROK, é necessário configurar na aplicação para isso substitua a url da linha abaixo que fica em [development.rb](config/environments/development.rb), depois reinicie a aplicação.

```ruby
  config.hosts << "34be-186-224-89-100.sa.ngrok.io"
```

Após a configuração na aplicação vá ate o repositório do GitHub e adicione um webhook apontando para o endpoint abaixo:

```
"htttp://sua_url_ngrok/webhooks/events"
```

Com isso a aplicação já deverá estar pronta para os testes no GitHub, mas caso tenha duvida sobre o processo de criação do webhook no GitHub o link a seguir pode te ajudar. [Docs de webhooks GitHub](https://developer.github.com/webhooks/)
