require_relative "lib/game"

# Class for starting a game
class Main
  def initialize
    puts %(
|X|O| |
|-|-|-|
|O|X| | Welcome to Tick-Tack-Toe
|-|-|-|
| | |X|

)
    new_game_choice
  end

  private

  def new_game_choice
    input = ""
    until input == "N"
      print "Do you want to start a new game? |Y/N| "
      input = gets.chomp.upcase
      new_game if input == "Y"
    end
  end

  def new_game
    @game_manager = Game.new
    puts @game_manager.game_loop
  end
end

Main.new
