
require_relative 'game'
describe Game do

let(:game) { Game.new("hello")}

it "prints the word" do
expect(game.word).to eq "hello"
  end

  it "changes number of guesses allowed to 2x the length of word entered" do
    expect(game.guess_limit).to eq 2 * word.length
  end
end