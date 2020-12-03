# frozen_string_literal: true

require './display'

# Class to create a code and create utility for the guesser.
class CodeBreaker
  # Create the secret code array, and hint array.
  def initialize
    code_array = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
    @secret_code = code_array.map(&:to_s)
    @secret_hint = Array.new(4, ' ')
  end
end
