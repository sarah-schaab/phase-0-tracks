puts "How many Employees would you like to enter?"
employee_num = gets.chomp.to_i

employee_num.times do

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

puts "Do you have any allergies? Yes or No"
allergy = gets.chomp

if allergy == "no"
  puts "you don't have any allergies"
else
puts "Enter one Allergy at a time, and enter 'done' when finished listing allergies"

allergic_to = gets.chomp
until (allergic_to == "sunshine" or allergic_to == "done")
    puts "Please enter your allergies."
end
end





if (2017-age) == year_born && (garlic == true || insurance == true)
  puts "#{name} is probably not a vampire"
elsif
  ((2017-age) != year_born) && (garlic == false || insurance == false)
    puts "#{name} is probably a vampire"
elsif
  ((2017-age) != year_born) && garlic == false && insurance == false
    puts "#{name} is most certainly a vampire"
elsif
  name = "Drake Ula" || "Tu Fang"
  puts "#{name} “Definitely a vampire."

else
  puts "Results inconclusive."
end
end



# if (2017 - current_age == year_born) = true &&
#   (health_insurance == no) = false
#   puts "#{name} is probably not a vampire"
# elsif
#   (2017 - current_age != year_born) &&
#   (health_insurance == false || garlic == false)
#   puts "#{name} is probably  a vampire"
# end