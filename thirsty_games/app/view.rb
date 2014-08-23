class View
  def self.welcome
    puts "Welcome"
  end

  def self.show_player_list(player_list)
    puts "-"*30
    puts "Players:"
    player_list.each{|player| puts "\t #{player[0]}. #{player[1]}"}
  end

  def self.show_game_list(game_list)
    puts "-"*30
    puts "Games:"
    game_list.each{|game| puts "\t #{game[0]}. #{game[1]}"}
  end

  def self.options
    puts "-"*30
    puts "What would you like to do?"
    # sleep(1)
    puts "Please type a number that corresponds to an action"
    puts "\t<1> Show a list of players "
    puts "\t<2> Show a list of games"
    puts "\t<3> Display players and scores for a specific game"
    puts "\t<4> Display a player's score across all games"
    puts "\t<5> Display all player's total scores"
    puts "\t<6> Display leaderboard"
    puts "\t<7> Play a game"
    puts "\t<exit> Exits program"
  end

  def self.ask_for_game_id
    puts "Please type game ID number"
  end

  def self.ask_for_player_id
    puts "Please type player ID number"
  end

  def self.option_invalid
    puts "DOES NOT COMPUTE"
  end

  def self.exit
    "Exiting program"
  end

  def self.all_players_scores(name_score_array)
    puts " #{name_score_array[0]}'s current total score is #{name_score_array[1]}"
  end

  def self.show_person_score(arg)
    puts arg
  end

  def self.top_three_players(top_three)
    puts top_three
  end

  def self.which_game?
    puts "Please enter the number of the game you would like to play:"
  end

  def self.which_player?
    puts "Please enter the number of the player you would like to be:"
  end

  def self.play_game(game_name, random_score)
    puts "You just played #{game_name} and gained a score of: #{random_score}"
  end


end
