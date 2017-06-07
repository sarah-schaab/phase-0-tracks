
require_relative 'game'
describe Game do

let(:game) { Game.new("hello")}

it "prints the word into an array" do
  expect(game.word).to eq ["h","e","l","l","o"]
  end

  it "prints previous guesses" do
    game.add_to_previous_guesses("L")
    expect(game.previous_guesses).to eq ['L']
  end

end