p = proc do |a, b|
  result = a + b
  puts "Hello #{result}"
end

p2 = proc { |str| puts str.upcase }

def caller(my_proc, my_proc2)
  my_proc.call(10, 20)
  my_proc2.call('Nikita')
  yield(my_proc, my_proc2)
end

caller(p, p2) do |proc1, proc2|
  proc1.call(10, 200)
  proc2.call('Kata')
end
