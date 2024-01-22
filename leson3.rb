def demo(*arg)
  sum = 0
  arg.each do |next_arg|
    result = yield(next_arg)
    sum += next_arg if result
  end
  puts sum
end

demo(10, 50, 3) do |el| #block
  el.even?
end
