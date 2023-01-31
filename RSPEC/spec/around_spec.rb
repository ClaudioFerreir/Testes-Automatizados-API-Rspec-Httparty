describe 'usando around' do
  #substitui o before e after ja que integra as funcoes para os testes
  around(:each) do |testes|
    #executa a mesma coisa que o before
    puts 'executando comandos antes dos testes'
    testes.run
    #executa a mesma coisa que o after
    puts 'executando comandos depois dos testes'
  end

  it 'de dois numeros' do
    total = 2 + 2
    expect(total).to eq 4
    puts "O total é: #{total}"
  end
end