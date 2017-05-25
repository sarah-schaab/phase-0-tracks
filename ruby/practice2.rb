=begin
Create a list
 -create a hash with keys as items and numbers corresponding to those items
 -list = Hash.new
Add an item with a quantity to the list
  -how to add to the hash with Key:value pair
  -list["item"] = quantity
  -p list
Remove an item from the list
  -how to remove a key:value pair from list
  -list.delete("item")
  -p list
Update quantities for items in your list
  -how to change a value with a key
  -list[item] = new quantity
Print the list (Consider how to make it look nice!)
  -p list.each {|item, quantity| puts "Buy #{quanitiy} of #{items}"}

=end
def create_new_shoppinglist
 shopping_list = ""
 shopping_list = Hash.new
end

p "would you like to add an item to your list?"
add = gets.chomp

def add_item()
  p "what would you like to add"
  item = gets.chomp
  if item == "nothing"
  else
    shopping_list[item] = ""
  end
end

if add == "yes"
 add_item
else
end






p shopping_list
p "what would you like to add to your shopping list?"
item = gets.chomp
p "How many #{item} do you want?"
quantity = gets.chomp.to_i

shopping_list[item] = quantity
p shopping_list


# def add_item|item, quantity|
#   shopping_list[item] = quantity
# end

