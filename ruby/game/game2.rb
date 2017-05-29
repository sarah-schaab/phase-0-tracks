class Game
  attr_reader :secret_word, :guess_limit
  attr_writer :secret_word, :guess_limit
  attr_accessor :secret_word, :guess_limit


  def initialize(secret_word)
    @secret_word = secret_word
    @number_of_guesses = 0
    @guess_limit = guess_limit
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


  def remove_from_guess_limit
    @guess_limit = guess_limit - 1
  end



end

#________USER INTERFACE________#
guessed_letters = []
solved_letters = []
unguessed_letter = "_"
puts "Player 1, enter a secret word for Player 2 to guess"
secret_word = gets.chomp
# #initialize game with word entered
game = Game.new(secret_word)
game.guess_limit



hidden_word = secret_word.length
hidden_word.times {solved_letters << unguessed_letter}



puts "Player 2, you have #{(secret_word.length + 4)} chances to win the game."
 guesses = secret_word.length + 4
while guesses > 0
  puts "Please guess a letter."
  guessed_letter = gets.chomp
  guessed_letters << guessed_letter
  guesses = guesses - 1

  if game.word.include?(guessed_letter)
        puts "you guessed a letter correctly!"
        puts "you have #{guesses} chances left"
  elsif
      game.word.include?(guessed_letter) == false
      puts "This letter is NOT in the word!"
      puts "you have #{guesses} chances left"

  elsif guessed_letters.include?(guessed_letter)
    puts "You already guessed that!. Try again."
    guesses += 1
    puts "you have #{guesses} chances left"
end
end



