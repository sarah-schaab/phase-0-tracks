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

  def previous_guesses
    @previous_guesses
  end

  def add_to_previous_guesses(letter)
    @previous_guesses << letter
  end

  def check_previous_guesses(letter)
    @previous_guesses.include?(letter)
  end

  def remove_from_guess_limit
    @guess_limit = guess_limit - 1
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
guessed_letters = []
solved_letters = []
unguessed_letter = "_"
hidden_word_array =
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

# hidden_word_array.map { |a| a - "*" }
# p hidden_word_array



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











