class Hello
  def hi
    'hi'
  end
  
  def hello(name)
    "hello #{name}"
  end
end

hello = Hello.new
p hello.send :hi
p hello.send :hello, "bobchin"

class Hello
  protected
  def protected_hello
    'protected_hello'
  end
  
  private
  def private_hello
    'private_hello'
  end
end

hello = Hello.new

begin
  p hello.protected_hello
rescue => e
  p e.message
end
p hello.send :protected_hello

begin
  p hello.private_hello
rescue => e
  p e.message
end
p hello.send :private_hello

p '---------------------------------------------'

class MailSender
  attr_reader :from
  
  def initialize(from)
    @from = from
  end
  
  def send(to)
    "send mail: #{to}"
  end
end

mail_sender = MailSender.new("bobchin")
p mail_sender.send "bobchin@example.com"
p mail_sender.__send__ :send, "bobchin"
