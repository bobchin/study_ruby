# リフレクション

# インスタンス変数名の取得(Object#instance_variables)
class HaveInstanceVal
  def initialize
    @foo = 1
    @bar = 2
  end
end

have_instance_val = HaveInstanceVal.new
p have_instance_val.instance_variables

p have_instance_val.instance_variables.any? do |instance_val_name|
  instance_val_name =~ /fo/
end

p (have_instance_val.instance_variables.select do |instance_val_name|
  instance_val_name =~ /fo/
end).to_a

p '-----------------------------------------------------------'

# Object#instance_variable_defined?
p have_instance_val.instance_variable_defined? :@foo
p have_instance_val.instance_variable_defined? :@buzz
begin
  p have_instance_val.instance_variable_defined? :foo
rescue => e
  p e.message
end

p '-----------------------------------------------------------'

# Object#instance_variable_get
p have_instance_val.instance_variable_get :@foo
p have_instance_val.instance_variable_get :@buzz
begin
  p have_instance_val.instance_variable_get :foo
rescue => e
  p e.message
end

p '-----------------------------------------------------------'

# Object#instance_variable_set
p have_instance_val.instance_variable_get :@foo
have_instance_val.instance_variable_set :@foo, 2
p have_instance_val.instance_variable_get :@foo

p have_instance_val.instance_variable_defined? :@buzz
have_instance_val.instance_variable_set :@buzz, 3
p have_instance_val.instance_variable_defined? :@buzz
p have_instance_val.instance_variables
