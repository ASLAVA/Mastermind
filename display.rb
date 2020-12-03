# frozen_string_literal: true

require './message'

# Display module to show the game in a colorful way
module Display
  include Message

  def start_screen
    home
    menu
  end

  def game_option
    start_screen
    answer = gets.chomp.downcase
    menu_process(answer)
  end

  def menu_process(answer)
    if %w[s start].include?(answer)
      pick_game
    elsif %w[q quit].include?(answer)
      puts 'Thank you for playing!'
    elsif %w[h help].include?(answer)
      help_screen
      game_option
    else
      game_option
    end
  end

  def pick_game
    choice
    gets.chomp.downcase
  end

  def help_screen
    help
  end
end
