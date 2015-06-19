class Parent
  def greet
    puts 'Hi'
  end
end

class Child < Parent
end

puts Child.superclass

child = Child.new
child.greet

class Sample1
  def initialize
    @ivar = 'content'
  end
end

class Sample1Child < Sample1
end

p Sample1.new
p Sample1Child.new


class Sample2
  PARENT = 'constant in parent'
end

class Sample2Child < Sample2
end

p Sample2.constants
p Sample2Child::PARENT
