# frozen_string_literal: true

require_relative './display'
require_relative './message'
require_relative './code'
# Class to create a code and create utility for the guesser.
class CodeMaker < Code
  # Create the secret code array, and hint array.
  def initialize()
    super()
    code_array = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
    @secret_code = code_array.map(&:to_s)
  end
end
