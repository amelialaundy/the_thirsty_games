require 'rspec'
require 'pp'
require_relative '../db/config'
require_relative '../app/models/game'
require_relative '../app/models/player'
require_relative '../app/models/player_games'

def game_list
  #This is for the controller, returns a 2d array
  Game.all.collect {|p| [p.id, p.name]}
end

def player_list
  #This is for the controller, returns a 2d array
  Player.all.collect {|p| [p.id, p.name]}
end

def person_score(person_id)
  #returns the player name and score for a single Player
  player = Player.find(person_id)
  [p.name,p.total_scores]
end

def all_players_scores
  #uses the above person_score method to
  array = []
  Player.all.each {|player| array << person_score(player.id)}
  array
end

def order_all_players_scores
  scoreboard= all_players_scores
  scoreboard.sort_by!{|person_stats|person_stats[1]}
  scoreboard.reverse
end

def top_3_players
  order_all_players_scores.slice(0,3)
end

# pp game_list
# pp player_list
pp person_score(1)
#  pp all_players_scores
#  pp order_all_players_scores
#  pp top_3_players
