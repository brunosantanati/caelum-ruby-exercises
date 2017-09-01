# declaração do método
def qualifica(nota, msg="Obrigado")
  puts "A nota do restaurante foi #{nota}. #{msg}"
end  

# chamada do método
qualifica(10)
# chamadas com parâmetros opcionais
qualifica(1, "Comida ruim.")
