# Class for getting and validating user input
class Input
  def initialize(game_grid)
    @game_grid = game_grid
  end

  def get_user_input
    print "Select your move (RowColumn): "
    input = gets.chomp.upcase
    return input if valid_input?(input)
    puts "Incorrect form of input. Correct example: A1."
    get_user_input
  end

  private
  def valid_input?(input)
    return @game_grid.grid.any? {|key, value| key == input[0].to_sym && value[input[1].to_i]} if input.size == 2
    false
  end
end