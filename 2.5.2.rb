class Ruler
  def length=(val)
    puts "#{val} を代入します"
    @length = val
    puts "#{val} を代入しました"
  end
  
  def length
    @length
  end
end

ruler = Ruler.new
ruler.length = 30
# puts ruler.length
