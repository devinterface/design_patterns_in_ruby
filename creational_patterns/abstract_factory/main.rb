require 'models.rb'
require 'factories.rb'

game_store = GameStore.new(2, :rpg)
game_store.show_games
game_store = GameStore.new(5, :arcade)
game_store.show_games

