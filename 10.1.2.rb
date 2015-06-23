class ParentClass
  def super_public_method
  end
  
  private
  def super_private_method
  end
  
  protected
  def super_protected_method
  end
end

class ChildClass < ParentClass
  def public_method
  end
  
  private
  def private_method
  end
  
  protected
  def protected_metho
  end
end

child = ChildClass.new
def child.singleton_method
end

# privateメソッド以外を列挙(public, protected, 特異メソッド)
p child.methods
# 特異メソッドのみ
p child.methods false

p '---------------------------------------'

p child.public_methods
p child.private_methods
p child.protected_methods

p child.public_methods false
p child.private_methods false
p child.protected_methods false

p child.singleton_methods

p '---------------------------------------'

module AddSingletonMethodModule
  def singleton_method_from_add_singleton_method
  end
end

child.extend AddSingletonMethodModule

# すべての特異メソッド
p child.singleton_methods
# このオブジェクトの特異メソッドのみ
p child.singleton_methods false
p child.methods false

p '---------------------------------------'

class HaveMethod
  def has_method
    'has_method'
  end
end

class NotHaveMethod
end

have_method = HaveMethod.new
not_have_method = NotHaveMethod.new

p have_method.respond_to? :has_method
p not_have_method.respond_to? :has_method
