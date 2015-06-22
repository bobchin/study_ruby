class BaseClass
  def hello
    :hello
  end
end

# base_object -> BaseClass
base_object = BaseClass.new
p base_object.hello

# --------------------------------------------

class InheritClass < BaseClass
end

# inherit_object -> InheritClass -> BaseClass
inherit_object = InheritClass.new
p inherit_object.hello

# --------------------------------------------

# 特異メソッド
def base_object.hello
  :singleton_method_hello
end

# base_object -> BaseClassの特異クラス -> BaseClass
p base_object.hello

# --------------------------------------------

# mix-in
module HelloModule
  def hello_from_module
    :hello_from_module
  end
end

class InheritClass
  include HelloModule
end

# inherit_object -> InheritClass -> HelloModule -> BaseClass
inherit_object = InheritClass.new
p inherit_object.hello_from_module

# --------------------------------------------

# さらにmix-in
module ByeModule
  def hello_from_module
    :ByeModule_hello_from_module
  end
end

class MixinClass < BaseClass
 include HelloModule
 include ByeModule
end

# mixin -> ByeModule -> HelloModule -> BaseClass
mixin = MixinClass.new
p mixin.hello_from_module

# --------------------------------------------

inherit_object = InheritClass.new

begin
  p inherit_object.not_exist_method
rescue => e
  p e.message
end
