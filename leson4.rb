def method1(_arg1, &block)
  # method2(&block)
  puts block.inspect
end

def method2(&block)
  block.call
end




method1(100) do
  puts 'Hello from metode1'
end
