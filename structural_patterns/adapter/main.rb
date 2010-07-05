require 'models.rb'
require 'adapters.rb'

console = PalConsole.new

final_fantasy = NtscGame.new("Final Fantasy")

adapter = NtscToPalAdatper.new(final_fantasy)

console.play_game(adapter)