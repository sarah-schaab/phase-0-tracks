# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk

p "ARRAY 1"
zombie_apocalypse_supplies.each do |item|
  print "#{item}", "*"
end


#zombie_apocalypse_supplies.each { |x| print x, " * "}



# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
p "ARRAY 2"
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
    end
    array
    end

p bubble_sort(zombie_apocalypse_supplies)



# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?

p "ARRAY 3"
def array_search(array, index)
  array.length do |i|
  if array[i] = true
    puts "#{item} is in bag"
else
  puts "#{item} is not in bag"
end
end
end
p array_search(zombie_apocalypse_supplies, 9)





# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
p "ARRAY 4"
  def pick_5(array)
   item_1 = array[0]
   item_2 = array[1]
   item_3 = array[2]
   item_4 = array[3]
   item_5 = array[4]
   p "The items you are keeping are: #{item_1}, #{item_2}, #{item_3}, #{item_4}, #{item_5}"
  end

  # def item_picker(array)
  #   array.map do |index|
  #     pick_5


  #     new_items_array = []

 pick_5(zombie_apocalypse_supplies)

# ----

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

# combined_array = zombie_apocalypse_supplies + other_survivor_supplies
# combined_array.uniq!
p "ARRAY 5"
def array_adder(array_1, array_2)
  array_3 = array_1 + array_2
  p array_3.uniq!
end


p "These are your new supplies #{array_adder(zombie_apocalypse_supplies, other_survivor_supplies)}"


# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}
# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# extinct_animals.each {|key, value| puts "#{key} - #{value} ", "*" }
# p "HASHES #1"
# extinct_animals.each do |key, value|
#   puts "#{key}-#{value}", "*"
# end
# ----

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# p "HASHES #2"
# extinct_animals.each do  |key, value|
#   if value < 2000
#     puts "#{key} #{value} "
# end
# end

# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# p "HASHES #3"
# extinct_animals.each do  |key, value|
# if value > 1
#     new_value = value+3
#   p "#{key} - #{new_value}"
# end
# end

# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

p "HASHES #4"
# def extinct_checker(animal)
#  extinct_animals.each do |key, value|
#   if key == animal.to_sym
#     puts "The #{animal} is extinct"
#   else
#     puts "The #{animal} is not extinct"
#   end
# end
# end
#  animal = "Dodo"

# extinct_animals.each do |k, v|
#     if extinct_animals.include? animal.to_sym
#         puts "#{k}, #{v} Is on the list of extinct animals"
#     else
#         puts "The #{animal} is not extinct"
#    end
# end
animal = "Andean Cat"


extinct_animals.map do  |key, value|
if animal == key
  p "#{key} is extinct "
else
  puts "#{animal} is not extinct"
end
end

# def hash_search(hash, key)
#   hash.map do |i|
#   if hash.has_key? == true
#     puts "#{item} is in bag"
# else
#   puts "#{item} is not in bag"
# end
# end
# end





# # p extinct_checker("Dodo")
# # p extinct_checker("Saiga Antelope")
# # # ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
# first remove "Passenger Pigeon"
# second return "Passenger Pigeon" and date as an array
p "HASHES 5"

# passenger_pigeon_array[] = extinct_animals.shift()
extinct_animals.rassoc(1914)

# trying to use shift but cannot figure out exactly how to implement it.
# using .rassoc(value) instead
