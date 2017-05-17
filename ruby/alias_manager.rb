# Create a method that takes a spy's real name
  #First Swap the first and last name

  #Second Change All of the vowels (a,e,i,o,u) to the next vowel.

  # Third change all of the consonants to the next consonant.

# Print out the new alias.


# Create a method that takes a spy's real name

puts "What is your first and last name?"
full_name = gets.chomp.split(' ')

#First Swap the first and last name

full_name[0], full_name[1] = full_name[1], full_name[0]


#Second Change All of the vowels (a,e,i,o,u) to the next vowel.
vowels = ['a','e','i','o','u']

full_name.include?(vowels)
p full_name


 # Third change all of the consonants to the next consonant.
consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y', 'z']



p full_name