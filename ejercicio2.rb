require 'date'
class Course
  attr_accessor :name, :f_init, :f_fin
  def initialize(name, f_init, f_fin)
    @name = name
    @f_init = Date.parse(f_init)
    @f_fin = Date.parse(f_fin)
  end
  def curso_antes(filter_date)
    # raise ArgumentError.new('no hay cursos en esta fecha') if filter_date >= @f_fin
    puts "El curso #{@name} inicia el #{f_init}" if @f_init < filter_date
  end
  def curso_despues(filter_date)
    # raise ArgumentError.new('no hay cursos en esta fecha') if filter_date >= @f_fin
    puts "El curso #{@name} finaliza #{f_fin}" if @f_fin > filter_date
  end
end
data = File.open('cursos.txt', 'r').readlines

cursos = []
data.each do |line|
  name, f_init, f_fin = line.split(' ')
  cursos <<  Course.new(name, f_init, f_fin)
end
cursos.each do |curso|
  curso.curso_antes(Date.today)
  curso.curso_despues(Date.today)
end
