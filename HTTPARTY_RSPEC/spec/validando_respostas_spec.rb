describe 'fazer uma requisição' do 
  it 'get' do
    @melhor_opcao = Contato.get('/contacts/1')
    #puts @melhor_opcao
    #puts @melhor_opcao.code #retorna o codigo de validacao ex. 200 ok
    #expect(@melhor_opcao.code).to eq 200
    puts @melhor_opcao.body #observar o formato de retorno, string ou json.
    #puts @melhor_opcao.parsed_response['data']['attributes']['name'] #usamos o metodo 'parsed_response' para converter uma string em um json
    expect(@melhor_opcao.parsed_response['data']['attributes']['name']).to eq 'bruno 1'
    expect(@melhor_opcao.parsed_response['data']['attributes']['last-name']).to eq 'batista 1'
    expect(@melhor_opcao.parsed_response['data']['attributes']['email']).to eq 'bruno01@gmail.com'
    expect(@melhor_opcao.parsed_response['data']['attributes']['age']).to eq 28
  end
end