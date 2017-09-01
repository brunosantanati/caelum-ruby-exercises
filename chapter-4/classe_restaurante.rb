class Restaurante

  attr_accessor :nota

  def initialize(nome)
    puts "criando um novo restaurante: #{nome}"
    @nome = nome
  end

  def qualifica(msg="Obrigado")
    puts "A nota do #{@nome} foi #{@nota}. #{msg}"
  end

end

# crie dois nomes diferentes
restaurante_um = Restaurante.new("Fasano")
restaurante_dois = Restaurante.new("Fogo de Chao")

restaurante_um.nota = 10
restaurante_dois.nota = 1

restaurante_um.qualifica
restaurante_dois.qualifica("Comida Ruim!")
