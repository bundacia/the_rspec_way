require 'factory'

class Item
  attr :name

  def initialize(args)
    @name = args[:name]
  end

  def self.search(name)
    Factory::STORE.find_all {|_| _.name == name}
  end
end
