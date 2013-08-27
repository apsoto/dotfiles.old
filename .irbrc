require 'rubygems'
begin
  require 'ap'
  AwesomePrint.defaults = {
    :indent => -2,
    :color => {
      :hash  => :pale,
      :class => :white
    }
  }
rescue LoadError
end

class Object
  def interesting_methods
    case self.class
    when Class
      self.public_methods.sort - Object.public_methods
    when Module
      self.public_methods.sort - Module.public_methods
    else
      self.public_methods.sort - Object.new.public_methods
    end
  end
end
