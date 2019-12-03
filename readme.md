Lembre-se, a aplicação para este teste está em codeigniter.

# Setup do teste

## Docker
- executar o comando do docker compose, acessar http://localhost
 
```
$ docker-compose up -d
```

- acessar o PhpMyAdmin na url http://localhost:8080
- user e senha => "beedoo"
- importar o dump localizado em application/dump

## PHP
- configurar a conexão com o banco de dados em application/config/database.php
- importar o dump localizado em application/dump
 
```
$ php -S localhost:80 -t /public
```

# Iniciando
- Não existe usuario e senha, apenas clique em "login"
- Na página inicial tem explicações de regras de negocio dessa aplicação
- Ainda na página inicial, logo abaixo, 3 cards descrevendo os erros que devem ser solucionados
- Qualquer dúvida, entre em contato ;)
  
# Considerações
- Sobre a regra "que um usuário só pode pertencer a um time" é necessário estabelecer um relacionamento entre as tabelas de "users" e "teams". No dump do database existe usuários que pertencem a vários time.
- "Um time pode ter vários grupos e um usuário pode pertencer a diversos grupos dentro de seu time" dificilmente será possivel estabelecer qual time o usuário pertence.

#### Obrigado! 
