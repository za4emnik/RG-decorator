require 'require_all'
require './decorator'
require_all 'decorators'

# method_decorator module for apply decorators
module MethodDecorator
  def self.included(base)
    base.extend MethodDecorator
  end

  def method_added(name)
    super
    decorator = Decorator.get
    return unless decorator
    Decorator.clear
    orign_method = instance_method(name)
    define_method(name) do |*args, &block|
      method = orign_method.bind(self)
      decorator.call(method, *args, &block)
    end
  end
end
