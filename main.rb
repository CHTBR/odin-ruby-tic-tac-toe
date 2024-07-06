require_relative "lib/game"

# Class for starting a game
class Main
  def initialize
    @game_manager = Game.new
    puts %(
|X|O| |
|-|-|-|
|O|X| | Welcome to Tick-Tack-Toe
|-|-|-|
| | |X|

)
  end
end

Main.new
