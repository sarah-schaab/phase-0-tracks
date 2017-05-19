# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
zombie_apocalypse_supplies.each do |item|
  print "#{item}", "*"
end
#zombie_apocalypse_supplies.each { |x| print x, " * "}



# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
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



# def search_zombie_array (my_array, item)

#   # create a nested hash
#   hash = {}
#   hash_key = 0 # key
#     # add a block to iterate the list
#     my_array.each do |item|
#     hash[hash_key]= item
#     hash_key += 1
#   end

#   hash.key(item)
# end


# #p search_number_array(arr, 1)
# p search_zombie_array(zombie_apocalypse_supplies, "water jug")





# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# def keep_five(array)
#   array.each
#   array.keep_if { |i| i > 5 }
#   end



# p keep_five(zombie_apocalypse_supplies)


# ----

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

combined_array = zombie_apocalypse_supplies + other_survivor_supplies
combined_array.uniq!
p "These are the unique items of your supplies #{combined_array}"
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

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# extinct_animals.each {|key, value| puts "#{key} - #{value} ", "*" }

extinct_animals.each do |key, value|
  puts "#{key}-#{value}", "*"
end
# ----

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
extinct_animals.each do  |key, value|
  if value < 2000
    puts "#{key} #{value} "
end
end

# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
extinct_animals.each do  |key, value|
if value > 1
    new_value = value+3
  p "#{key} - #{new_value}"
end
end

# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.


def extinct_checker()
  extinct_animals.each do |key, value|

  extinct_animals.member?(key)

  if key = true
    puts "The #{item} is extinct"
  else
      key = false
      puts "The #{item} is not extinct"
end
end
end

p extinct_checker("Andean Cat")
p extinct_checker("Dodo")
p extinct_checker("Saiga Antelope")
# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
