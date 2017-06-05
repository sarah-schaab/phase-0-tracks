#item class
#attributes
#-name
#-color
#-price
#METHODS
#getters for name, color, price,
#TO_S override

class Item
  attr_reader :name, :color, :price

  def initialize(name, color, price)
    @name = name
    @color = color
    @price = price
  end

  def to_s
    "A #{@color} #{@name} that cost #{@price}"
  end
end

