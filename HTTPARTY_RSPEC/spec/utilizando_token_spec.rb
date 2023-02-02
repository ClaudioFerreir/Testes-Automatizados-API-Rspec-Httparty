describe 'usando' do
  it 'token' do
    #gera um email aleatorio
    @email = Faker::Internet.email

    @body = {
      user: {
        email: @email,
        password: '123456',
        password_confirmation: '123456'
      }
    }.to_json

    @header = {
      Accept: 'application/vnd.tasksmanager.v2',
      'Content-Type': 'application/json'
    }

    @criar = Criar.post('/users', body: @body, headers: @header)
    puts @criar.body
    puts @criar.parsed_response['data']['attributes']['auth-token']

    @body_one = {
      session: {
        email: @email,
        password: '123456'
      }
    }.to_json

    @header_one = {
      Accept: 'application/vnd.tasksmanager.v2',
      'Content-Type': 'application/json',
      # para token individual e gerado aleatoriamente 
      Authorization: "#{@criar.parsed_response['data']['attributes']['auth-token']}"
      # para token unico para todos os usuarios
      # Authotization: "5HEhg_V96xi2rzmZyb6F"
    }

    @login = Criar.post('/sessions', body: @body_one, headers: @header_one)
    puts @login
  end
end