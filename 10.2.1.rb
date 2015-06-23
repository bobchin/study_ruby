class ClassVariables
  @@class_variable = :class_variable
  
  def define_lazy_class_variable
    @@lazy_class_variable = :lazy_class_variable
  end
end

p ClassVariables.class_variables
p ClassVariables.new.define_lazy_class_variable
p ClassVariables.class_variables

p ClassVariables.class_variable_defined? '@@class_variable'
p ClassVariables.class_variable_defined? '@@undefined_class_variable'

p '-------------------------------------------------------'

p ClassVariables.class_variable_get '@@class_variable'
begin
  p ClassVariables.class_variable_get '@@undefined_class_variable'
rescue => e
  p e.message
end

ClassVariables.class_variable_set '@@class_variable', :class_variable_set
p ClassVariables.class_variable_get '@@class_variable'

begin
  p ClassVariables.class_variable_get '@@undefined_class_variable'
rescue => e
  p e.message
end
ClassVariables.class_variable_set '@@undefined_class_variable', :defined
p ClassVariables.class_variable_get '@@undefined_class_variable'

p '-------------------------------------------------------'

module IncludeModule
  MODULE_CONST_VAR = 1
end

class ConstantsClass
  include IncludeModule
  
  CLASS_CONST_VAR = 1
  
  class InnerClass
    INNER_CLASS_CONST_VAR = 1
  end
end

p ConstantsClass.constants
p ConstantsClass.constants false
p ConstantsClass::InnerClass.constants

p '-------------------------------------------------------'

class HasConstants
  CONST_VARIABLE = 1
end

p HasConstants.const_get :CONST_VARIABLE
begin
  p HasConstants.const_get :UNDEFINED_CONST_VARIABLE
rescue => e
  p e.message
end
begin
  p HasConstants.const_get :not_const_variable
rescue => e
  p e.message
end

p '-------------------------------------------------------'

class BlankClass
end

p BlankClass.constants
BlankClass.const_set :CONST_VAR, 1
p BlankClass.constants
p BlankClass.const_get :CONST_VAR

BlankClass.const_set :CONST_VAR, 2
p BlankClass.constants
p BlankClass.const_get :CONST_VAR
