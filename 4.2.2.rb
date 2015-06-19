# mix-in

module Greetable
  def greet_to(name)
    puts "Hello, #{name}. My name is #{self.class}."
  end
end

class Alice
  include Greetable
  
  def greet_to(name)
    super
    
    puts 'Nice to meet you!'
  end
end

alice = Alice.new
alice.greet_to 'Bob'
