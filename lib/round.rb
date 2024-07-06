# Class for managing a single round of the game
class Round
  def initialize(game_grid, input_manager, player)
    @input_manager = input_manager
    @game_grid = game_grid
    @player = player
  end

  def play_round
    input = @input_manager
    @game_grid.set_cell_value(input, @player)
    player_won?
  end

  private

  def player_won?
    won_rows? || won_columns? || won_diagonals?
  end
end
