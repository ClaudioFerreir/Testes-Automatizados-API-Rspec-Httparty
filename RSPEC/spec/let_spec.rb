describe 'somar' do
  context 'dois numeros' do
    #let cria uma variavel para usar dentro de um contexto e é valida para todo o contexto
    let(:resultado){ 4 + 4 }
    let(:resultadoum){ resultado + 4}

    it 'sendo somados com variavel let' do
      expect(resultado).to eq 8
      expect(resultadoum).to eq 12
    end

  end
end