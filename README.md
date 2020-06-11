# banco de dados
banco de dados mysql com controle de versão flyway

## primeira execução
- configurar as variáveis de ambiente e diretórios nos arquivos: **.env** e **docker-compose.yml**
- executar ```docker-compose up -d```

## execução de scripts de migração e reparo flyway
- na opção _Command_ utilizar as opções: migrate ou repair
- executar ```docker-compose up flyway```
