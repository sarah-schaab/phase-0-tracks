puts "What is your name?"
name = gets.chomp

puts "How old are you?"
current_age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? Yes or No"
garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance? Yes or No"
health_insurance = gets.chomp

if 2017 - current_age == year_born &&
  (health_insurance == yes || garlic ==yes)
  puts "#{name} is probably not a vampire"
elsif condition

  puts "incorrect"
end