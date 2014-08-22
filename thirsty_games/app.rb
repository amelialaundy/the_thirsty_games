require_relative 'controller'
require 'rake'
require_relative 'Rakefile'

class App

  def initialize
    my_controller = Controller.new
    welcome
  end

  def welcome
    my_controller.welcome
    run
  end

  def run
    my_controller.new_session
    selected_option = gets.chomp!
    check_input(selected_option)
  end

  def check_input(selected_option)
    case selected_option
    when "1"
      my_controller.show_player_list
    when "2"
      my_controller.show_game_list
    when "3"
      # puts "what is the id of the game you would like to show?"
      my_controller.ask_for_game_id
      game_id = gets.chomp!
      my_controller.get_players_and_scores_for_chosen_game
    when "4"
      my_controller.one_player_total_score
    when "5"
      my_controller.all_players_total_score
    when "6"
      my_controller.leaderboard
    when "exit"
      my_controller.exit
    else
      my_controller.option_invalid
      run
    end

  end
end
myapp = App.new
