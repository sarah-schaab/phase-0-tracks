# #ROOM CLASS
# #Attributes:
# # -name
# - width
# - length
# -items (a collection of items)
# METHODS:
# -getters for items, name, width, length
# - setters for items, name
# - total_value (adds up prices of items)
# - to_s override
require "./room_items.rb"

class Room
  attr_reader :width, :length
  attr_accessor :items, :name

  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
    @items = []
  end

  def total_value #adds up prices of items
    total = 0
    @items.each do |item|
      total += item.price
    end
    total
  end

  def to_s #overrides defualt to_s method
    "#{@name} is #{@length} X #{@width}"
  end


end


