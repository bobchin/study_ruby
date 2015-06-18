def greet(recipient)
  return false unless recipient
  
  "Hi, #{recipient.capitalize}."
end

puts greet 'alice'
puts greet nil
