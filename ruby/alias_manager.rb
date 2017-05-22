# Create a method that takes a spy's real name


  #first Change All of the vowels (a,e,i,o,u) to the next vowel.

  #second change all of the consonants to the next consonant.

  #thrid Swap the first and last name

  # fourth Print out the new alias.

  # fifth LOOP!


# *********** PRACTICE *************
# def alias_creator()
#     letters = [
#       vowels = ['a','e','i','o','u'],
#       consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y', 'z']
#     ]
#   puts "What is your first and last name?"
#   full_name = gets.chomp.split('')
#   full_name.each.include?(vowels)

# end

# p alias_creator


#First Swap the first and last name

# alias_name[0], alias_name[1] = alias_name[1], alias_name[0]
# p alias_name

# ********THIS DIDNT WORK*************




#Second Change All of the vowels (a,e,i,o,u) to the next vowel.
#  vowels = ['a','e','i','o','u']
# p full_name.include?(vowels)



# # new_name = schaab >> scheeb || sarah >> sereh
# new_name = tdjeeb tesej


#  # Third change all of the consonants to the next consonant.
# consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y', 'z']



# p full_name

# hash_of_names{}
# original names[]
# alias_names[]


# # letters = [
#       vowels = ['a','e','i','o','u'],
#       consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y', 'z']
#     ]
# puts "what is your full name?"
# name = gets.chomp

#     def alias_creator(name)
#       vowels = ["a","e","i","o","u"]

#       new_array = name.split('') #creates indiviual letters in an array
#        # if vowel, go to next vowel
#       new_array.map! { |letter| letter.next }
#       end

      # new_string_2 = new_array.join('') #rejoins letters in a string
      # new_array_2 = new_string_2.split(' ')#converts two separate items in an array
      # new_array_2[0],new_array_2[1] = new_array_2[1], new_array_2[0] #switches positions in the array



CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)
ROTATED_CONSONANTS = CONSONANTS.rotate 1
VOWELS = %w(a e i o u A E I O U)
ROTATED_VOWELS = VOWELS.rotate 1





puts "what is your full name?"
name_vowel = gets.chomp
while name_vowel

def next_vowel(name_vowel)
  name_vowel.chars.map do |char|
      index = VOWELS.index char
      if index
        ROTATED_VOWELS[index]
      else
        char
      end
    end.
    join

end
new_name = next_vowel(name_vowel)
def next_consonant(new_name)
  new_name.chars.map do |char|
      index = CONSONANTS.index char
      if index
        ROTATED_CONSONANTS[index]
      else
        char
      end
    end.
    join
end
alias_name = next_consonant(new_name).split(' ')
alias_name[0], alias_name[1] = alias_name[1], alias_name[0]
p "Your new alias is"
p alias_name



end
end
if name_vowel == "quit"
break
end
array_of_alias.push(alias_name)
array_of_alias[]





# When will it be helpful to convert the string to an array to work with it more easily?
# ****  convert a string to an array when you need to work with individual pieces, use a string when you need to alter the whole string by using .join to make a string and .split to make an array

# How will you figure out whether a letter is a vowel?
# **** Use two separate data sets one for vowels and one for consonants

# How will you deal with the fact that some letters are uppercase?
# **** I could not figure out a way to handel the uppercase letters. I tried using .downcase but did not solve the problem.



# How will you handle edge cases?
# **** use the .rotate on your data sets respectively that way they rotate back to the beginning
