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

  def won_rows?
    @game_grid.grid.any? { |key, value| value.count(@player) == 3}
  end

  def won_columns?
    tmp_arr = @game_grid.grid.each_with_object(Array.new(3) { [] }) do |(_key, value), a|
      a[0] << value[0]
      a[1] << value[1]
      a[2] << value[2]
    end
    tmp_arr.any? { |array| array.count(@player) == 3 }
  end
end