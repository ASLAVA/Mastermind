# frozen_string_literal: true

require './display'

# Main Code class which breaker n maker extend
class Code
  include Display
  attr_writer :secret_hint

  def initialize
    @secret_code = Array.new(4, ' ')
    @secret_hint = Array.new(4, ' ')
    @last_guess = Array.new(4, ' ')
  end

  def show_board
    disp_info(@last_guess, @secret_hint)
  end

  def process_guess(guess)
    @last_guess = guess
    update_hint
  end

  def update_hint
    @secret_code.each do
      |x|
      @secret_hint.each do
        |y|
        if x == y
      end
    end
  end
  
end