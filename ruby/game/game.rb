###GAME####
# =>  One user can enter a word
# =>  Another user attempts to guess the word

# =>  Guesses should be limited related to the length of the word.
# =>  Repeated guesses should not be counted against the user

# =>  The guessing player recieves continual feedback on the current state of the word
# =>  If the letter is correct it displays the letter, if the letter has not been guessed yet it
#     displays a dashed line in place of the letters

# => The user should get a congratulatory message if they win.
# => The user should get a taunting message if they lose.








#___CLASS___#
#create a class for the game
class WordGame
 attr_reader :word
 attr_accessor :word

  def initialize(word) #to initialize game
    @word = word
    @guess_limit = 0
    @guess_count = 0
    @is_over = false
    @previous_guesses = []
  end




#method to limit number of guesses in relation to the word
  #the length of the word should determine the number of guesses


  def guess_limit_def #number of guesses user gets based on word length
    @guess_limit = word.length + 2
  end

#method to put order to guesses
  #when a user guesses a letter
   #if the letter is in the word,
   #the letter should be displayed
   #if the letter is not in the word
   #the guess_

  #def

  end

#method to take guesses away


















#___DRIVER CODE___#

#Instructions for game
p "Please enter a word for player 2 to guess"
userword = "filler"

#initialize game with word entered
game = WordGame.new(userword)


p "Player 2, you have #{game.guess_limit_def} guesses to go. "



game.guess_limit_def
p game






