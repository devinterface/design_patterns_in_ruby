module MyAbstractGameFactory
  def create(title)
    raise NotImplementedError, "You should implement this method"
  end
end

class GameFactory
  include MyAbstractGameFactory
  
  def initialize(game_class)
    @game_class = game_class
  end
  
  def create(title)
    @game_class.new title
  end
end

class GameStore
  def initialize(number_of_games, game_type)
    c = Object.const_get(game_type.to_s.capitalize)

    game_factory = GameFactory.new(c)
    
    if game_type == :rpg
      title = 'Final Fantasy'
    elsif game_type == :arcade
      title = 'Double Dragon'
    end
    
    @games = []
    number_of_games.times do |i|
      @games << game_factory.create("#{title} #{i+1}")
    end
  end 
  
  def show_games
    @games.each {|game| game.description} 
  end
end
