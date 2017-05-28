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








# #___CLASS___#
# #create a class for the game
class Game
 attr_reader :word, :guess_limit, :is_over
 attr_writer :guess_limit
 attr_accessor :word, :guess_limit, :is_over

# #initializes game
  def initialize(word) #to initialize game
    @word = word.downcase.split('')
    @guess_limit = 0
    @guess_count = 0
    @is_over = false
    @previous_guesses = []
  end

#  #Hides word from user
#   def hide_word
#     hidden_word = @word
#       @word.length.times do
#          print "-"
#       end
#   end

# #number of guesses user gets based on word length
  def guess_limit
    @guess_limit = @word.length * 2
  end

  def remove_from_guess_limit
    @guess_limit -= 1
  end


# #check if game_over
# def gameover_check(index)
#   if guess_count == guess_limit
#   game_over = true
#     p "you lost the game!"
#   elsif  @array_of_word_letters == player_2
#     game_over = true
#     p "you won the game!"
#   else
#     game_over = false
#   end
# end

# def show_progress(word,array)
#   blank_string = ''
#   @word.chars.each do |letter|
#     if array_of_letters.include?(letter)
#       blank_string << letter
#     else
#       blank_string << '_'
#     end
#   end
#   blank_string
# end


end


# end
# #method to take guesses away

# #______USER INTERFACE______#
puts "Player 1, enter a secret word for Player 2 to have a guess at"
word = gets.chomp
# #initialize game with word entered
game = Game.new(word)
 game.guess_limit
 p game

#loop while game is not over
while !game.is_over
puts "Player 2, you have #{game.guess_limit} chances left. Guess a letter"
letter = gets.chomp

  if word.include?(letter)
    puts "This letter is in the word!"
    game.guess_limit -=1
    guess_limit
  elsif
    word.include?(letter) == false
    puts "That letter is not in the word!"
    @guesslimit = game.guess_limit
    @guess_limit
  elsif
    word.include?(letter) == false && previous_guesses.include?(letter)
    puts "You already guessed that letter."
    game.guess_limit
    @guess_limit
  end
end







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
