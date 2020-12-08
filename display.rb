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

  def disp_info(code, hint)
    disp_array(code)
    disp_hint(hint)
  end

  def disp_array(code)
    print 'Last Guess: '
    code.each { |x| print color(x).to_s }
  end

  def disp_hint(hint)
    print ' Hints: '
    hint.each { |x| print clue(x).to_s }
    puts ''
  end

  def fake_load
    1.upto(100) do |i|
      printf("\rGenerating Code: %d%% ", i)
      sleep(0.03)
    end
    puts "\nCode Made. Good Luck!"
  end

  def recieve_code
    ask_for_code
    code = gets.chomp.downcase.split('')
    good_code(code)
  end

  def guess
    code_guess
    guess_check(gets.chomp.downcase.split(''))
  end

  def good_code(code)
    code.each { |x| recieve_code unless x.to_i.between?(1, 6) }
    code
  end

  def guess_check(guess_tocheck)
    guess_tocheck.each { |x| guess unless x.to_i.between?(1, 6) }
    guess_tocheck
  end
end
