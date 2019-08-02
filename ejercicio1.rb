class Table
  attr_accessor :mesa, :money
  def initialize(mesa, *money)
    @mesa = mesa
    @money = money.map(&:to_i)
  end
  def maximo
    @money.max
  end

end
nueva_lista = []
def leer_archivo(nueva_lista)
  data = File.open('casino.txt', 'r').readlines
  a = []
  data.each do |casino|
    ls = casino.split(', ')
    a = Table.new(*ls)
    nueva_lista << a
  end
  return nueva_lista
end
array1 = []
leer_archivo(nueva_lista).each do |i|
  array1 << i
end
d = 1
array1.each do |n|
  puts "En la #{n.mesa} lo maximo recaudado fue #{n.maximo} en el dia #{d}"
  d += 1
end
array2 = []
array1.each do |i|
  array2 << i.money
end

def porcentaje(array2)
  a = array2.inject(&:+)
  c = 0.0
  a.each do |i|
    c += 1
  end
  b = a.inject(&:+)
  return b / c
end
print "El porcentaje total es: ", porcentaje(array2), "\n"
