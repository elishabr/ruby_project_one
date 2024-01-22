# frozen_string_literal: true
class Cat # rubocop:disable Style/Documentation,Layout/EmptyLineAfterMagicComment
  # (instance method)
  def initialize(arg)
    @arg = to_cat_years(arg)
  end

  attr_accessor :arg

  # (class method)
  def self.speak
    puts 'Мау'
  end

  def birshday
    puts inspect
  end

  def semple(*arg)
    arg.each do |x|
      puts x
    end
  end

  private

  def to_cat_years(arg)
    arg / 4
  end
end

animal = Cat.new(40)
puts animal.arg
Cat.speak
animal.birshday

puts inspect
animal.semple(1, 2, 3, 4, 5, 6)
