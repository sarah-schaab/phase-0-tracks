puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i

if (2017-age) != year_born
  end

puts "Our company cafeteria serves garlic bread. Should we order some for you? Yes or No"
garlic = gets.chomp

unless  garlic == "yes"

end


puts "Would you like to enroll in the company’s health insurance? Yes or No"
insurance = gets.chomp

unless  insurance == "yes"

end

if (2017-age) == year_born && garlic || insurance
  puts "#{name} is probably not a vampire"
elsif
  (2017-age) != year_born && garlic || insurance
    puts "#{name} is probably a vampire"
end


# if (2017 - current_age == year_born) = true &&
#   (health_insurance == no) = false
#   puts "#{name} is probably not a vampire"
# elsif
#   (2017 - current_age != year_born) &&
#   (health_insurance == false || garlic == false)
#   puts "#{name} is probably  a vampire"
# end