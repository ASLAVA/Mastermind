# frozen_string_literal: true

require 'colorize'

# Display module to keep all messages clean
module Message
  def home
    puts "\n    Welcome to MASTERMIND by Slava Agarkov"
    puts "\n\t\t\t╭━╮╭━╮╱╱╱╱╱╭╮╱╱╱╱╱╱╱╱╱╱╱╱╱╱╭╮".light_black
    puts "\t\t\t┃┃╰╯┃┃╱╱╱╱╭╯╰╮╱╱╱╱╱╱╱╱╱╱╱╱╱┃┃".light_black
    puts "\t\t\t┃╭╮╭╮┣━━┳━┻╮╭╋━━┳━┳╮╭┳┳━╮╭━╯┃".light_black
    puts "\t\t\t┃┃┃┃┃┃╭╮┃━━┫┃┃┃━┫╭┫╰╯┣┫╭╮┫╭╮┃".light_black
    puts "\t\t\t┃┃┃┃┃┃╭╮┣━━┃╰┫┃━┫┃┃┃┃┃┃┃┃┃╰╯┃".light_black
    puts "\t\t\t╰╯╰╯╰┻╯╰┻━━┻━┻━━┻╯╰┻┻┻┻╯╰┻━━╯".light_black
    puts ''
  end

  def menu
    puts "\t\tGAME OPTIONS"
    puts "\n>START"
    puts '>HELP'
    puts '>QUIT'
    print "\nPlease enter your choice: "
  end

  def choice
    puts 'Please enter \'1\' to be CODEMAKER or \'2\' to be CODEBREAKER'
  end

  def help
    puts "\n\t\t\t\t   GAME RULES",
         "\nMastermind is a two player game. When the game starts, you will have to choose between",
         'being the Codemaker or the Codebreaker. The Codemaker will be asked to pick a 4 digit CODE ',
         "using (1-6) in the terminal. For example input code 2345 #{color('2')}#{color('3')}#{color('4')}#{color('5')}",
         "\nThe Codebreaker has 12 attempts to guess the CODE by entering a 4 digit code into the terminal",
         "Ex.#{color('2')}#{color('3')}#{color('5')}#{color('4')} #{clue('*')}#{clue('*')}#{clue('?')}#{clue('?')}",
         "#{clue('*')}#{clue('?')} represent clues. A #{clue('*')} means a number is present in CODE and in CORRECT",
         "position. #{clue('?')} means the number is present in CODE. Codebreaker wins when all 4 digits are CORRECT"
  end

  def color(number)
    {
      '1' => "\e[101m  1  \e[0m ",
      '2' => "\e[43m  2  \e[0m ",
      '3' => "\e[44m  3  \e[0m ",
      '4' => "\e[45m  4  \e[0m ",
      '5' => "\e[46m  5  \e[0m ",
      '6' => "\e[41m  6  \e[0m "
    }[number]
  end

  def clue(clue)
    {
      '*' => "\e[91m\u25CF\e[0m ",
      '?' => "\e[37m\u25CB\e[0m "
    }[clue]
  end
end
