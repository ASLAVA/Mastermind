# frozen_string_literal: true

require_relative './display'
require_relative './message'
require_relative './code'
# Class to create a code and create utility for the guesser.
class CodeBreaker < Code
  # Create the secret code array, and hint array.
  def initialize
    super()
    fake_load
    code_array = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
    @secret_code = code_array.map(&:to_s)
  end

  def process_guess
    @last_guess = guess
    @secret_hint = [' ', ' ', ' ', ' ']
    check_exact
    check_close
  end
end
