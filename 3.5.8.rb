def block_sample
  puts 'stand up'
  yield if block_given?
  puts 'sit down'
end

block_sample do
  puts 'walk'
end

puts '------'

block_sample

puts '------'


file = File.open('3.5.8.without_block.txt', 'w')
file.puts 'ブロックなしで書き込み'
file.close

File.open '3.5.8.with_block.txt', 'w' do |file|
  file.puts 'ブロックありで書き込み'
end


def display_value
  puts yield
end

display_value do
  1973
end

ret = display_value do
  next 'nextはブロックの戻り値になる'
end
puts ret

ret = display_value do
  break 'breakは???'
end
puts ret
