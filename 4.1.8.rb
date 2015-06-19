# 特異メソッド

class Foo
end

foo = Foo.new
bar = Foo.new

def bar.singleton_method
  puts 'Called!'
end

bar.singleton_method

begin
  foo.singleton_method
rescue => e
  p e.message
end

p "-----------------------------"

class Sample
  def override_me
    puts 'in Foo class'
  end
end

sample = Sample.new
def sample.override_me
  super
  puts 'in singleton method'
end

sample.override_me
