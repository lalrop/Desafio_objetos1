class Carta

  attr_accessor :marca , :number
  attr_reader :mano
  def initialize(pinta,numero)
      @marca = pinta
      @number = numero
  end

  def mostrar
    puts "carta numero #{@number} con pinta #{@marca}
        "
  end

  def salir
    puts 'Has terminado el juego'
  end

  def jugar(marks, num)

  end

end

puts 'selecciona una opcion
      -jugar
      -mostrar
      -salir'
jugada = gets.chomp.downcase

marks = %w[trebol corazon pica diamante]
num = [1,2,3,4,5,6,7,8,9,10]

while jugada != 'salir'
  case jugada

  when 'jugar'
    mano = []
    5.times do
      mano.push(Carta.new(marks.sample, num.sample))
    end
    puts " "
    puts "Ok tu mano a sido generada"
    puts " "

  when 'mostrar'
    for i in 0..4
      mano[i].mostrar
    end

  end

    puts 'selecciona una opcion
                -jugar
                -mostrar
                -salir'
    jugada = gets.chomp.downcase

end

puts 'Has salido del juego'
