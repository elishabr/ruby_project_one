# frozen_string_literal: true

class Sample # rubocop:disable Style/Documentation
  def my_metode(arg1, arg2, arg3 = :test)
    puts arg1, arg2, arg3
  end

  def new_way(arg1:, arg2:, arg3: :test)
    puts arg1, arg2, arg3
  end

  # poetry mode
  def poetry(num, h)
    puts num
    puts h.inspect
  end
end

s = Sample.new
s.my_metode(1, 3)
s.new_way(arg1: 'hi', arg2: 'hello')
s.poetry(42, key1: 1, key2: 2,)
link_to 'My link', ''
