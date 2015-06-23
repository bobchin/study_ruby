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
  def protected_method
  end
end

p ChildClass.instance_methods
p ChildClass.public_instance_methods
p ChildClass.private_instance_methods
p ChildClass.protected_instance_methods

p ChildClass.method_defined? :public_method
p ChildClass.method_defined? :private_method
p ChildClass.method_defined? :protected_method

p ChildClass.method_defined? :super_public_method
p ChildClass.method_defined? :super_private_method
p ChildClass.method_defined? :super_protected_method

p ChildClass.public_method_defined? :public_method
p ChildClass.private_method_defined? :private_method
p ChildClass.protected_method_defined? :protected_method
