#Build a house of out classes
#HOUSE CLASS
#attributes:
# - rooms (a collection of rooms)
# Methods
# - getter for rooms
# - add_room (only allows up to ten rooms)
# - square_footage (adds up the sq footage and returns as an integer)
# - total_value(adds up value of items in all rooms)
# - to_s override
require "./room_items.rb"
require "./room_type.rb"

class House
  attr_reader :rooms

  def initialize
    @rooms = []
  end

  def add_room(room)
    if @rooms.length < 11
      @rooms << room
      true
    else
      false
    end
  end

  def to_s
    house_str = ""
    @rooms.each do |room|
      house_str << room.to_s
      house_str << "\n"
      room.items.each do |item|
        house_str << item.to_s
        house_str << "\n"
      end
      house_str << "\n"
    end
  end


  def square_footage
    sq_footage = 0
    @rooms.each do |room|
      sq_footage += (room.width * room.length)
    end
    sq_footage
  end

  def total_value #look up inject method
    @rooms.each do |room|
      value += room.total_value
    end
    value
  end


end







#DRIVER CODE
house = House.new

living_room = Room.new("living room", 20, 30)
puts living_room
piano = Item.new("piano", "black", 100000)
table = Item.new("table", "brown", 2000)
living_room.items << piano
living_room.items << table

kitchen = Room.new("kitchen", 12, 15)
puts kitchen
sink = Item.new("sink", "white", 10000)
kitchen.items << sink

house.add_room(living_room)
house.add_room(kitchen)

puts house
puts house.square_footage

