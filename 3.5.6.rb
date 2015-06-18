def greet(name, *messages)
  messages.each do |msg|
    puts "#{msg}, #{name}."
  end
end

greet 'Ruby', 'Hello', 'こんにちわ', 'どもっ'
