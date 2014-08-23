require_relative 'db/config'
require_relative 'app/models/game'
require_relative 'app/models/player'
require_relative 'app/models/player_game'
require_relative 'app/view'

class Controller

  def welcome
    View.welcome
  end

  def new_session
    show_player_list
    show_game_list
    show_options
  end

  def ask_for_game_id
    View.ask_for_game_id
  end

  def ask_for_player_id
    View.ask_for_player_id
  end

  def get_players_and_scores_for_chosen_game(game_id)
    g=Game.find(game_id)
    g.players_and_scores
  end

  def one_player_total_score(player_id)
    View.show_person_score(person_score(player_id))
  end

  def exit
    View.exit
  end

#################################################
  def show_player_list
    View.show_player_list(player_list)
  end

  def show_game_list
    View.show_game_list(game_list)
  end

  def show_options
    View.options
  end
################################################




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
    p = Player.find(person_id)
    p.total_scores
  end

  def all_players_scores
    #uses the above person_score method to
    update_player_total_score
    array = []
    Player.all.each {|player| View.all_players_scores([player.name, player.total_score])}
    # Player.all.each {|player| array << ["#{player.name}", "#{person_score(player.id)}"]}

    # View.all_players_scores(array)
  end

  def update_players_total_score
    Player.all.each do |player|
      player.update total_score: person_score(player.id)
    end
  end


  def order_all_players_scores
    scoreboard= all_players_scores
    scoreboard.sort_by!{|person_stats|person_stats[1]}
    scoreboard.reverse
  end

  def top_3_players
    top_three = order_all_players_scores.slice(0,3)
    View.top_three_players(top_three)
  end

  def choose_player
    View.which_player?
    show_player_list
  end

  def choose_game
    View.which_game?
    show_game_list
  end

  def play_game!(player_id, game_id)
    View.play_game(find_game_name(game_id), random_number)
    update_one_players_score(player_id, game_id, random_number)
  end

  def update_one_players_score(player_id, game_id, random_number)
    play_game = PlayerGame.find_by player_id = player_id, game_id = game_id
    new_play_game_score = play_game.game_score.to_i + random_number.to_i
    # p new_play_game_score
    # p new_play_game_score.class
    play_game.update game_score: new_play_game_score.to_s
    player = Player.find(player_id)
    new_player_total_score = player.total_score.to_i + random_number.to_i
    player.update total_score: new_player_total_score.to_s
    p player.total_score
  end

  def find_game_name(game_id)
    game = Game.find(game_id)
    name = game.name
  end

  def random_number
    num = rand(143)
  end
end


