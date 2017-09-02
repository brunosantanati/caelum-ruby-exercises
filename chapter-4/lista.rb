class Franquia

  def initialize
    @restaurantes = []
  end

  def adiciona(*restaurantes)
    for restaurante in restaurantes
      @restaurantes << restaurante
    end
  end

  def mostra
    @restaurantes.each do |r|
      puts r.nome
    end
  end

  def relatorio
    @restaurantes.each do |r|
      yield r
    end
  end

  def expandir(restaurante)
    def restaurante.cadastrar_vips
      puts "Restaurante #{self.nome} agora com área VIP!"
    end
  end

end

class Restaurante
  attr_accessor :nome

  def fechar_conta(dados)
    puts "Conta fechado no valor de #{dados[:valor]} 
    e com nota #{dados[:nota]}. Comentário: #{dados[:comentario]}"
  end
end

restaurante_um = Restaurante.new
restaurante_um.nome = "Fasano"
restaurante_um.fechar_conta valor: 50, nota: 9, comentario: 'Gostei!'

restaurante_dois = Restaurante.new
restaurante_dois.nome = "Fogo de Chao"

franquia = Franquia.new
# faça a franquia abrir a classe e adicionar o método
franquia.expandir restaurante_um
restaurante_um.cadastrar_vips

# adicione ambos de uma só vez
franquia.adiciona restaurante_um, restaurante_dois
franquia.mostra

# chamada com blocos
franquia.relatorio do |r|
  puts "Restaurante cadastrado: #{r.nome}"
end
