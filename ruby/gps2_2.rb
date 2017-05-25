# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  #create a hash
  #pass in items from shopping list
  #each item should a default qty. 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]




def new_list(shoplist)
  shoplist = shoplist.split(' ')
  shopping_list = Hash.new
  shoplist.each do |item|
    shopping_list[item] = 1

  end
  print_list(shopping_list)
  shopping_list
end





# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: create method to add item & quantity
#         print list
# output:  list

def add_item(list, item, quantity)
  list[item] = quantity
  print_list(list)
  list
end


# Method to remove an item from the list
# input: list, item name
# steps: create method to delete item & qty from the list
#         print list
# output: list

def delete_item(list, item)
  list.delete(item)
  print_list(list)
  list
end


# Method to update the quantity of an item
# input: list, item name = new quantity
# steps: create method to update a qty for specific item
#         print list
# output: list
def update_item(list, item, new_quantity)
  if list.has_key?(item)
    list[item] = new_quantity
    print_list(list)
    list
   else
   p "that does not exist"
   print_list(list)
 end
end


# Method to print a list and make it look pretty
# input: list
# steps: create method to iterate through the list and each item:qty pair
#         print list
# output: the list
def print_list(list)
  p "**********"
  list.each {|item, quantity| puts "Get #{quantity} of #{item}"}
end

#___DRIVER CODE___#
p "what do you need"
shop_list = "apples oranges cereal pizza"

shopping_list = new_list(shop_list)

add_item(shopping_list, "carrots", "3")

delete_item(shopping_list,"apples")

update_item(shopping_list, "apples", "100")
