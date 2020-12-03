# frozen_string_literal: true

require './display'

# Game class creates the game and controls the flow of it.
class Game
  include Display
  def start_game
    choice = game_option
    code_maker if choice == '1'
    code_breaker if choice == '2'
  end

  def code_maker
    # Code here
    puts 'im here Maker'
  end

  def code_breaker
    # Code here
    puts 'im here breaker'
  end
end
