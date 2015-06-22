class Klass
  # これはクラスインスタンス変数
  # インスタンス変数ではない
  @class_instance_val = :class_instance_val
  
  # これはクラス変数
  @@class_val = :class_val
  
  def instance_method
    # インスタンスメソッド内なのでインスタンス変数へのアクセスになる
    p @class_instance_val
    
    # どうしてもアクセスしたいなら？Class#instance_variable_get を使う
    p self.class.instance_variable_get :@class_instance_val
    
    p @@class_val
  end
end

klass = Klass.new
klass.instance_method
