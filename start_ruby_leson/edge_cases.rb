p = proc { |arg1| puts arg1.inspect }

p.call # всеравно на количество аргументов

l = ->(arg) { puts "hello#{arg}" } # важно колич аргументов
l.call('test')
#-------1отличие

def demo(obj)
  puts 'befor obj call'
  obj.call # внутри вызова произошел ретерн
  puts 'avl'
end

p = proc do
  puts 'I,m'
  return 42
end

l = lambda do
  puts 'nikit'
  42
end

demo(l)
puts 'hello'

puts l.inspect
puts p.inspect
