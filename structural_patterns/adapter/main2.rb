require 'models.rb'

console = PalConsole.new

class NtscGame < Game  
  def play
    run 
  end
  
  # alternatively for this simple example we can define an alias:
  # alias play run
end 

final_fantasy = NtscGame.new("Final Fantasy")

double_dragon = NtscGame.new("Double Dragon")

console.play_game(final_fantasy)

console.play_game(double_dragon)
