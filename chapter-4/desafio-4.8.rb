puts 1.+(1)

class Fixnum
  def +(outro)
    self - outro # fazendo a soma subtrair
  end
end

puts 1.+(1)
