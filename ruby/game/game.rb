=begin !!!!!!PSEUDOCODE!!!!!!
# ###GAME####
# # =>  One user can enter a word
# # =>  Another user attempts to guess the word

# # =>  Guesses should be limited related to the length of the word.
# # =>  Repeated guesses should not be counted against the user

# # =>  The guessing player recieves continual feedback on the current state of the word
# # =>  If the letter is correct it displays the letter, if the letter has not been guessed yet it
# #     displays a dashed line in place of the letters

# # => The user should get a congratulatory message if they win.
# # => The user should get a taunting message if they lose.

#   if
#     puts "guess a letter" (must be lowercase so .downcase)
#     letter = gets.chomp
#     if array of guesses includes letter (if array_of_guesses.include(letter))
#     p "you already guessed #{letter}" (does not subtract from guess limit)
#     if array of guesses does not include letter (if array_of_guesses.include?(letter))
#     P "you guessed incorrectly"
#     if array_of_word_letters includes letter (if array_of_word_letters.include?(letter))
#     p "you guessed correctly"

#     if
#   if the guess limit is counted down to zero and word not exposed
#   -put "you ran out of guesses
#   -run game_over == true

#   if the guess limit is counted down to zero and the word is exposed
#     -run game_over == true


# elsif
# **** if guess_limit == guess_count
#       p "you suck you lost"
#       end
=end
#_____THE REAL STUFF!!!!!!_____#


#____WORD GUESSING GAME____#
#__CLASS__#
class Game
  attr_reader :secret_word, :guess_limit
  attr_writer :secret_word, :guess_limit
  attr_accessor :secret_word, :guess_limit


  def initialize(secret_word)
    @secret_word = secret_word.downcase.split('')
    @number_of_guesses = 0
    @guess_limit = guess_limit
    @previous_guesses = []
  end

  def word
    @secret_word = secret_word
  end

  def guess_limit # must correspond to the word length
    @guess_limit = secret_word.length * 2
  end


   def hide_word  #hiding word - tried GSUB, SUB, now replacing letters in word
      hidden_word = @secret_word
      replaced_letter = ""
      @secret_word.length.times do |hidden_word|
        replaced_letter += "_"
      end
      replaced_letter
    end
  def previous_guesses
    @previous_guesses
  end

  def add_to_previous_guesses(letter)
    @previous_guesses << letter
  end

  def remove_from_guess_limit
    @guess_limit = guess_limit - 1
  end



end

#________USER INTERFACE________#
guessed_letters = []
solved_letters = []
unguessed_letter = "_"
hidden_word_array = []
new_array = []


# #initialize game with word entered
puts "Player 1, enter a secret word for Player 2 to guess"
secret_word = gets.chomp
game = Game.new(secret_word)
game.guess_limit



# hidden_word = secret_word.length
# hidden_word.times {solved_letters << unguessed_letter}

# trial = "example"
# puts "Type a letter: "
# guess = gets.chomp
# puts trial.tr("^#{guess}", "*")

hidden_word_array.map { |a| a - "*" }
p hidden_word_array



puts "Player 2, you have #{(secret_word.length + 4)} chances to win the game."
 guesses = secret_word.length + 4
while guesses > 0
  puts "Please guess a letter."
  guessed_letter = gets.chomp
  game.add_to_previous_guesses(guessed_letter)
  guesses = guesses - 1

  if game.word.include?(guessed_letter)
        puts "you guessed a letter correctly!"
        puts "you have #{guesses} chances left"
        p secret_word.tr!("^#{guessed_letter}", "*")
        #p hidden_word_array

  elsif
      game.word.include?(guessed_letter) == false
      puts "This letter is NOT in the word!"
      puts "you have #{guesses} chances left"


  elsif game.previous_guesses.include?(guessed_letter)
    puts "You already guessed that!. Try again."
    guesses += 1
    puts "you have #{guesses} chances left"
    p "Letters you already guessed #{guessed_letters}"
end
#new_array << hidden_word_array.map! { |a| a.delete "*" }
#p hidden_word_array










end





































=begin____THIS IS ALL PRACTICE STUFF_____

# #if letter is in array_of_letters
#   #show the correct letters guessed
#   #puts "Player 2, you have #{game.guess_limit - 1} guesses left."
# #elsif letter is not in array_of_letters
#   #puts "Player 2, you guessed incorrectly. You have #{game.guess_limit - 1} guesses left."
#   #display current progress with correct letters
# #elsif guess_limit == 0
#  #@game_over = true
#   #puts "You suck, you lost"
# #elsif all letters are correct
#   #@game_over = true
#     #puts "YOU ARE SMART!"

#!!!!!!______ATTEMPT 1______!!!!!!#
# if word.include?(letter)
#     puts "This letter is in the word!"
#    @guess_limit = (game.guess_limit - 1)
#     @guess_limit

#   elsif
#     word.include?(letter) == false
#     puts "That letter is not in the word!"
#     @guess_limit = (game.guess_limit - 1)
#     @guess_limit
#   elsif
#     word.include?(letter) == false && previous_guesses.include?(letter)
#     puts "You already guessed that letter."
#     @guess_limit = (game.guess_limit)
#     @guess_limit
#   end




# p game











# #___DRIVER CODE___#
# # guessed_letters = []



# # #Instructions for game
# # p "Please enter a word for player 2 to guess"
# # word = "filler"

# # #initialize game with word entered
# # game = WordGame.new(word)


# # p "Player 2, you have #{game.guess_limit} guesses to go. "
# # game.hide_word


# # game.guess_limit
# # p game
# # p game.guess_limit



# =begin
# while game_over == false

#   if
#     puts "guess a letter" (must be lowercase so .downcase)
#     letter = gets.chomp
#     if array of guesses includes letter (if array_of_guesses.include(letter))
#     p "you already guessed #{letter}" (does not subtract from guess limit)
#     if array of guesses does not include letter (if array_of_guesses.include?(letter))
#     P "you guessed incorrectly"
#     if array_of_word_letters includes letter (if array_of_word_letters.include?(letter))
#     p "you guessed correctly"

#     if
#   if the guess limit is counted down to zero and word not exposed
#   -put "you ran out of guesses
#   -run game_over == true

#   if the guess limit is counted down to zero and the word is exposed
#     -run game_over == true


# elsif
# **** if guess_limit == guess_count
#       p "you suck you lost"
#       end





# =end
