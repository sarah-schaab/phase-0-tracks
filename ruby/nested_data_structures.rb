baseball_teams = {
  'Philadelphia Phillies' => {
      "First base" => "Tommy Joseph",
      "Second base" => "Cesar Hernandes",
      "Short Stop" => "Freddy Galvis",
      "Third Base" => "Ty Kelly"
},
  'New York Mets' => {
      "First base" => "Lucase Duda",
      "Second base" => "Neil Walker",
      "Short Stop" => "Jose Reyes",
      "Third Base" => "Wilmer Flores"
  },
   'New York Yankees' => {
      'First base' => 'Chris Carter',
      'Second base' => 'Starlin Castro',
      'Short Stop' => 'Didi Gregorius ',
      'Third Base' => 'Chase Headley'
  }
}


baseball_teams.each do |team, players|
    puts team
    players.each do |position, player|
     p "The #{position} player is #{player}."
    end
end

#City and apartments
# Brooklyn
  # Williamsburg
    # N 7th
      # Amanda
    # Stagg St
      # Amanda
  # Bushwick
    # Bushwick Ave
      # [Mariana, Flor, Kieran, Ris, Greg, Jesse, LoLo]
    # Myrtle Ave
     # [Darren, Archer, Stella, Mikey]
  # Greenpoint
    # Eagle St
      # [Darrius, Emanuel]
    # Diamond St
      # [Charlie, Katie, Joey]


brooklyn_apartments = {
  'Bushwick' => {
    'Bushwick Ave' => ['Mariana', 'Flor', 'Kieran', 'Ris', 'Greg', 'LoLo'],
    'Myrtle Ave' => ['Darren', 'Archer', 'Stella', 'Mikey']
  },
  'Greenpoint' => {
    'Diamond St' => ['Charlie', 'Katie', 'Joey'],
    'Eagle St' => ['Darrius', 'Emanuel']
  },
  'Williamsburg' => {
    'North 7th' => ['Amanda'],
    'Stagg St' => ['Amanda']
  }
}

puts "My favorite roommate ever was #{brooklyn_apartments['Bushwick']['Bushwick Ave'][0]}"
p brooklyn_apartments['Williamsburg']['North 7th'].include? "Amanda"
