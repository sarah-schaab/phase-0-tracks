
 # !!!!!!PSEUDOCODE!!!!!!
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

#   if the guess limit is counted down to zero and word not exposed
#   -put "you ran out of guesses
#   -run game_over == true

#   if the guess limit is counted down to zero and the word is exposed
#     -run game_over == true


#_____THE REAL STUFF!!!!!!_____#
#__CLASS__#
class Game
  # attr_reader :secret_word, :guess_limit
  # attr_writer :secret_word, :guess_limit
  attr_accessor :secret_word, :guess_limit

  def initialize(secret_word)
    @secret_word = secret_word.downcase.split('')
    @number_of_guesses = 0
    @previous_guesses = []
  end

  def word
    @secret_word = secret_word
  end

  def previous_guesses
    @previous_guesses
  end

  def add_to_previous_guesses(letter)
    @previous_guesses << letter
  end

  def check_previous_guesses(letter)
    @previous_guesses.include?(letter)
  end

  def progress(secret_word, previous_guesses)
    progress_string = ''
    @secret_word.each do |letter|
      if @previous_guesses.include?(letter)
        progress_string << letter
      else
        progress_string << '_'
      end
    end
    progress_string
  end
end

#________USER INTERFACE________#
puts "Player 1, enter a secret word for Player 2 to guess"
secret_word = gets.chomp
#initialize game with word entered
game = Game.new(secret_word)
game.guess_limit


puts "Player 2, you have #{(secret_word.length + 4)} chances to win the game."

guesses = secret_word.length + 4
while guesses > 0
  puts "Please guess a letter."
  guessed_letter = gets.chomp
  guesses = guesses - 1
  game.previous_guesses

  if
    game.previous_guesses.include?(guessed_letter) == true
    puts "You already guessed #{guessed_letter}"
    guesses += 1


  elsif game.word.include?(guessed_letter)
      game.add_to_previous_guesses(guessed_letter)
        puts "you guessed a letter correctly!"
        puts "you have #{guesses} chances left"
         #secret_word.tr!("^#{guessed_letter}", "*")
        #trying to figure out how to print the progress using the above information
      p game.progress(secret_word, @previous_guesses)
          if game.progress(secret_word, @previous_guesses) == secret_word
          break
        end
  else
    game.word.include?(guessed_letter) == false
    game.add_to_previous_guesses(guessed_letter)
    puts "This letter is NOT in the word!"
    puts "you have #{guesses} chances left"
    p game.progress(secret_word, @previous_guesses)
  end

end

if game.progress(secret_word, @previous_guesses) == secret_word
  puts "YOU WON!"
elsif
  game.progress(secret_word, @previous_guesses) != secret_word
  puts "YOU LOST THE GAME!"

end



# #___DRIVER CODE___#
# # guessed_letters = []



# # #Instructions for game
# # p "Please enter a word for player 2 to guess"
# # word = "filler"

# # #initialize game with word entered
# # game = WordGame.new(word)


# # p "Player 2, you have #{game.guess_limit} guesses to go. "
# # game.hide_word




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




