# frozen_string_literal: true

require_relative './display'
require_relative './message'
require_relative './code'
# Class to create a code and create utility for the guesser.
class CodeMaker < Code
  # Create the secret code array, and hint array.
  include Display
  def initialize
    super()
    @secret_code = recieve_code
    @g_list = [[*1..6], [*1..6], [*1..6], [*1..6]]
  end

  def process_guess
    cpu_guess
    @secret_hint = [' ', ' ', ' ', ' ']
    check_exact
    check_close
    clean_up_guess_set
  end

  def cpu_guess
    # Grab random number from set
    @last_guess = [@g_list[0].sample(1)[0].to_s, @g_list[1].sample(1)[0].to_s,
                   @g_list[2].sample(1)[0].to_s, @g_list[3].sample(1)[0].to_s]
  end

  def clean_up_guess_set
    # remove from set after hints
    @secret_hint.each_with_index do |x, index|
      @g_list[index] = [@last_guess[index].to_i] if x == '*'
    end
  end
end
