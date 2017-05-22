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



loop do

puts "what is your full name?"
name_vowel = gets.chomp

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
until name_vowel == "quit"
break
end
  end