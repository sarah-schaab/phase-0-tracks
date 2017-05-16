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

puts "Do you need to update any of your client's info? If no updates need to be made enter 'none'"
update = gets.chomp

if update == "none"
  p sarahs_app
elsif
else
end


