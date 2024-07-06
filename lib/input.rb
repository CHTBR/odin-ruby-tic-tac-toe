# Class for getting and validating user input
class Input
  def initialize(game_grid)
    @game_grid = game_grid
  end

  def return_user_input
    print "Select your move (RowColumn): "
    input = return_converted_input
    return input if valid_input?(input)

    puts "Incorrect form of input. Correct example: A1."
    return_user_input
  end

  private

  def valid_input?(input)
    return @game_grid.grid.any? { |key, value| key == input[0] && value[input[1]] == " " } if input

    false
  end

  def return_converted_input
    raw_input = gets.chomp.upcase
    return [raw_input[0].to_sym, raw_input[1].to_i] if raw_input.size == 2

    nil
  end
end
