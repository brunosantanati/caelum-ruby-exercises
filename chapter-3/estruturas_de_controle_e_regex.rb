# estruturas de controle: if
puts "Digite a nota"
nota = gets

if nota.to_i > 7
  puts "Boa nota!"
else
  puts "Nota ruim!"
end

# estruturas de controle: for
for i in (1..3)
  x = i
  puts x
end
puts x

#regex
puts /rio/ =~ "são paulo" # nil
puts /paulo/ =~ "são paulo" # 4

#operador ||=
restaurante ||= "Fogo de Chao"
puts restaurante
