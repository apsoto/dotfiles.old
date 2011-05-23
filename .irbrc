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

