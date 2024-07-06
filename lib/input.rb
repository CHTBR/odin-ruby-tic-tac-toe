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
end