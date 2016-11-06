# decorator for adding sting 'Hi'
class Hi < Decorator
  def call(orign, *params, &block)
    p 'Hi'
    orign.call(*params)
  end
end
