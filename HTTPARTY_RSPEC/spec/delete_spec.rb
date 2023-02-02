describe 'fazer requisicao' do
  it 'delete' do
    #HTTParty.delete('http://localhost:3000/contacts/5')
    Contato.delete('/contacts/5')
  end
end