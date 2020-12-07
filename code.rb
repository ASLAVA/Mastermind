# frozen_string_literal: true

require './display'

# Main Code class which breaker n maker extend
class Code
  include Display

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
    @secret_hint = [' ', ' ', ' ', ' ']
    check_exact
    check_close
  end

  def solved
    solved?
  end

  # Keeping comparisons using the secret code Private.
  private

  def solved?
    return true if @secret_code == @last_guess
  end

  def check_exact
    @secret_code.each_with_index { |x, index| @secret_hint[index] = '*' if x == @last_guess[index] }
  end

  def check_close
    @secret_hint.each_with_index do |x, index|
      next unless x == ' '

      @secret_code.each { |y| @secret_hint[index] = '?' if @last_guess[index] == y }
    end
  end
end
