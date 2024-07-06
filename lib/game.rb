require_relative "grid"
require_relative "input"
require_relative "round"

# Class for managing start, end and flow of the game
class Game
  def initialize
    @grid_manager = Grid.new
    @input_manager = Input.new(@grid_manager)
    @round_manager = Round.new(@grid_manager, @input_manager)
    @players = %w[X O]
  end

  def game_loop
    9.times do
      puts @grid_manager
      return "Player #{@players[0]} won." if @round_manager.play_round(@players[0])

      @players.reverse!
    end
    "A draw!"
  end
end
