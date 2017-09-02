class Franquia
  def info
    puts "Restaurante faz parte da franquia"
  end
end

class Restaurante < Franquia
  def info
    super
    puts "Restaurante Fasano"
  end
end

restaurante = Restaurante.new
restaurante.info
