describe 'fazer requisicao' do
  context 'para alterar dados com' do
    it 'put' do
      @body_put = {
        "id": 4,
        "name": "bruno04",
        "last_name": "batista04",
        "email": "bruno04@gmail.com",
        "age": 28,
        "phone": 21984759575,
        "address": "Rua dois",
        "state": "Minas Gerais",
        "city": "Belo Horizonte"
      }.to_json

      @requisicao_put = Contato.put('/contacts/4', body: @body_put)
      puts @requisicao_put
    end

    it 'patch' do
      @body_patch = {
        "id": 3,
        "name": "bruno 03",
        "last_name": "batista 03",
        "email": "bruno03@gmail.com",
      }.to_json

      @requisicao_patch = Contato.patch('/contacts/3', body: @body_patch)
      puts @requisicao_patch
    end
  end
end