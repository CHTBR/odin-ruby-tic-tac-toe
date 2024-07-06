# Class for managing a single round of the game
class Round
  def initialize(game_grid, input_manager, player)
    @input_manager = input_manager
    @game_grid = game_grid
    @player = player
  end
end