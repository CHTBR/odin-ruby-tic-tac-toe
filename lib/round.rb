# Class for managing a single round of the game
class Round
  def initialize(game_grid, input_manager)
    @input_manager = input_manager
    @game_grid = game_grid
  end

  def play_round(player)
    @player = player
    input = @input_manager.return_player_input(@player)
    @game_grid.set_cell_value(input, @player)
    player_won?
  end

  private

  def player_won?
    won_rows? || won_columns? || won_diagonals?
  end

  def won_rows?
    @game_grid.grid.any? { |_key, value| value.count(@player) == 3 }
  end

  def won_columns?
    tmp_arr = @game_grid.grid.each_with_object(Array.new(3) { [] }) do |(_key, value), a|
      a[0] << value[0]
      a[1] << value[1]
      a[2] << value[2]
    end
    tmp_arr.any? { |array| array.count(@player) == 3 }
  end

  def won_diagonals?
    tmp_arr = @game_grid.grid.each_with_object(Array.new(2) { [] }).with_index do |((_key, value), a), i|
      a[0] << value[i]
      a[1] << value[(i - 2).abs]
    end
    tmp_arr.any? { |array| array.count(@player) == 3 }
  end
end
