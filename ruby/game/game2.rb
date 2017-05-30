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
        #trying to figure out how to print the progress using the above information
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




