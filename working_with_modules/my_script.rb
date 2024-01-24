# require_relative 'importer/engine'
# require_relative 'printer/engine'

# importer = Importer::Engine.new
# printer = Printer::Engine.new

# importer.start
# printer.start
require_relative 'my_lib'

class MyParent
  extend MyLib # создает классовые методы
end

MyParent.helper

class MyClass < MyParent # rubocop:disable Style/Documentation
  include MyLib # создает методы образца класса
  def my_instance_method
    puts 'Hi'
    helper
  end
end

obj = MyClass.new
obj.my_instance_method
obj.helper
