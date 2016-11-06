require './method_decorator'

# custom class
class Foo
  include MethodDecorator

  +Hi
  def say_hi(name)
    p name
  end
end

f = Foo.new
f.say_hi('John')
