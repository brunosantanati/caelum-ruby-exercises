class Franquia
  def info
    puts "Restaurante faz parte da franquia"
  end
end

class Restaurante < Franquia
end

restaurante = Restaurante.new
restaurante.info
