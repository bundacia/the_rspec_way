# Fake Facotry to get test to run
class Factory
  STORE = []
  def self.build(thing, args)
    Item.new(args).tap do |item|
      STORE << item
    end
  end

  def self.clear
    STORE.clear
  end
end
