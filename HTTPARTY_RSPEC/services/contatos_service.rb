module Contato
  include HTTParty
  #url base de contato
  base_uri 'http://localhost:3000'
  #opcoes do meu service
  format :json
  headers Accept: 'application/vnd.tasksmanager.v2',
          'Content-Type': 'application/json'
end

# toda vez que eu chamar este modulo a url padrao dele sera 'https://localhost:3000'
# e ele tera o headers com a opcoes Accept: 'application/vdn.tasksmanager.v2', 'Content-Type': 'application/json'
# e sera do formato json