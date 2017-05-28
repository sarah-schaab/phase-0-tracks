


it "changes letters in word to dashes" do
expect(game.hide_word).to eq "_______"
  end

  it "changes number of guesses allowed to 2x the length of word entered" do
    expect(game.guess_limit).to eq 2 * word.length
  end