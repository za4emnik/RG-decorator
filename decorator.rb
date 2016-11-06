# Class for save decorator
class Decorator
  def self.+@
    @@decorator = self.new
  end

  def self.get
    @@decorator
  end

  def self.clear
    @@decorator = nil
  end
end
