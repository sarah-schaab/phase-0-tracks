#prompt user for the following information:
#ask user if they want to enter client information
  # -if yes, run a method to add input into a hash for the client info
  # -if no, end
#create an empty hash for the client
# create keys for the following info
    # -name
    # -age
    # -number of children
    # -decor theme
#allow user to put in their own information.
# update each hash item with the input from the user.
# print out the updated hash
# ask user if they need to update any information



sarahs_app = {
  name: "",
  age: "",
  kids: "",
  decor_theme: ""
}


puts "Please enter client information"

puts "What is your client's name?"
client_name = gets.chomp

puts "How old is your client?"
client_age = gets.chomp.to_i

puts "How many kids does your client have?"
kids = gets.chomp.to_i

puts "What is your clients decor theme?"
decor_theme = gets.chomp

sarahs_app[:name] = client_name
sarahs_app[:age] = client_age
sarahs_app[:kids] = kids
sarahs_app[:decor_theme] = decor_theme

puts sarahs_app

puts "Do you need to update any of your client's info? If no updates need to be made enter 'none', If you need to update your clients name type:'name' If you need to update your clients age type: 'age', If you need to update the number of children your client has type: 'kids', If you need to update the decor theme type:'decor_theme'"
update = gets.chomp

if update == "none"
  p sarahs_app
elsif
  update == "name"
  puts "What is your client's name?"
  client_name = gets.chomp
  sarahs_app[:name] = client_name
elsif
  update == "age"
  puts "How old is your client?"
  client_age = gets.chomp
  sarahs_app[:age] = client_age
elsif
  update == "kids"
  puts "How many kids does your client have?"
  kids = gets.chomp
  sarahs_app[:kids] = kids
elsif
  update == "decor_theme"
  puts "What is your clients decor theme?"
  decor_theme = gets.chomp
  sarahs_app[:decor_theme] = decor_theme
else
  puts "im sorry i didnt understand you"
end

puts sarahs_app