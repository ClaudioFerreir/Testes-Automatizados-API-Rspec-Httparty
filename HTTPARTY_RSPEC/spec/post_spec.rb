describe 'fazer um requisição' do
  it 'post' do
    @body = {
      "name": "bruno5",
      "last_name": "batista5",
      "email": "bruno5@gmail.com",
      "age": 28,
      "phone": 21984759575,
      "address": "Rua dois",
      "state": "Minas Gerais",
      "city": "Belo Horizonte"
    }.to_json

    # forma simples do httparty
    #@headers = {
    #  'Content-Type': 'application/json',
    #  'Accept': 'application/vnd.tasksmanager.v2'
    #}

    #@request = HTTParty.post('http://localhost:3000/contacts', body: @body, headers: @headers)
    #puts @request

    @request = Contato.post('/contacts', body: @body)
    puts @request
  end
end