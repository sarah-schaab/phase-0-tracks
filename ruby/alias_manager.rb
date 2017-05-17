# Create a method that takes a spy's real name
  #First Swap the first and last name

  #Second Change All of the vowels (a,e,i,o,u) to the next vowel.

  # Third change all of the consonants to the next consonant.

# Print out the new alias.


# Create a method that takes a spy's real name
def alias_creator()
    letters = [
      vowels = ['a','e','i','o','u'],
      consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y', 'z']
    ]
  puts "What is your first and last name?"
  full_name = gets.chomp.split('')
  full_name.each.include?(vowels)

end

p alias_creator


#First Swap the first and last name

# alias_name[0], alias_name[1] = alias_name[1], alias_name[0]
# p alias_name






#Second Change All of the vowels (a,e,i,o,u) to the next vowel.
#  vowels = ['a','e','i','o','u']
# p full_name.include?(vowels)



# # new_name = schaab >> scheeb || sarah >> sereh
# new_name = tdjeeb tesej


#  # Third change all of the consonants to the next consonant.
# consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y', 'z']



# p full_name