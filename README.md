# Gerenciamento de Ordens de Serviço

Este projeto foi desenvolvido para gerenciar as ordens de serviço de uma empresa. Ele permite que os usuários criem, visualizem, atualizem e excluam ordens de serviço e clientes.

## Configuração do ambiente

Para configurar o ambiente, siga as instruções abaixo:

1. Instale o Ruby e o Rails em sua máquina
2. Clone este repositório em sua máquina
3. No terminal, navegue até o diretório do projeto e execute o comando `bundle install`
4. Em seguida, execute o comando `rails db:migrate` para executar as migrações do banco de dados
5. Por fim, execute o comando `rails server` para iniciar o servidor

## Rotas

A seguir, são listadas todas as rotas disponíveis na aplicação:

### Ordens de serviço

| Método | Rota                              | Ação                                      |
| ------ | ---------------------------------| ------------------------------------------|
| GET    | /ordens_de_servico               | lista todas as ordens de serviço           |
| GET    | /ordens_de_servico/:id           | exibe uma ordem de serviço específica      |
| POST   | /ordens_de_servico               | cria uma nova ordem de serviço             |
| PUT    | /ordens_de_servico/:id           | atualiza uma ordem de serviço específica   |
| DELETE | /ordens_de_servico/:id           | exclui uma ordem de serviço específica     |

### Clientes

| Método | Rota                              | Ação                                      |
| ------ | ---------------------------------| ------------------------------------------|
| GET    | /clientes                        | lista todos os clientes                    |
| GET    | /clientes/:id                    | exibe um cliente específico                |
| POST   | /clientes                        | cria um novo cliente                       |
| PUT    | /clientes/:id                    | atualiza um cliente específico             |
| DELETE | /clientes/:id                    | exclui um cliente específico               |

## Contribuindo

Se você deseja contribuir para o projeto, siga as instruções abaixo:

1. Faça um fork deste repositório
2. Crie uma nova branch com sua feature ou correção de bug: `git checkout -b minha-feature`
3. Faça suas alterações e commit as mudanças: `git commit -am 'Adicionando nova feature'`
4. Envie para a branch: `git push origin minha-feature`
5. Envie um pull request para o repositório original

## Licença

Este projeto está licenciado sob a Licença MIT. Consulte o arquivo LICENSE.md para obter mais informações.
