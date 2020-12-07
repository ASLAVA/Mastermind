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
    puts "\nCODEMAKER SELECTED!"
    play_game(CodeMaker.new)
  end

  def code_breaker
    puts "\nCODEBREAKER SELECTED!"
    code = CodeBreaker.new
    play_game(code)
    lose unless code.solved
  end

  def play_game(code)
    12.times do
      code.show_board
      code.process_guess(guess)
      next unless code.solved

      code.show_board
      win
      break
    end
  end
end
