puts 1
puts "Hi\n"
puts "Alice", "Bob"

puts '-----------------'

print 'Hi'
print 1, 0.5, 'foo'

puts "\n-----------------"

puts sprintf('%04d', 1)
puts '%04d' % 5
printf '%04d', 6

puts "\n-----------------"

p 4423
p 4423, [24, 1, 365]

puts '-----------------'

class Ruler
  def initialize(length)
    @length = length
  end
  
  def to_s
    '=' * @length
  end
  
  def inspect
    "Ruler(length: #{@length})"
  end
end

ruler = Ruler.new(30)
puts ruler
p ruler
