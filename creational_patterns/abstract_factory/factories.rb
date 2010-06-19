module MyAbstractGameFactory
  def create(title)
    raise NotImplementedError, "You should implement this method"
  end
end

class RpgFactory
  include MyAbstractGameFactory
  def create(title)
    Rpg.new title
  end
end

class ArcadeFactory
  include MyAbstractGameFactory
  def create(title)
    Arcade.new title
  end
end

class GameStore
  def initialize(number_of_games, game_type)
    
    if game_type == :rpg
      title = 'Final Fantasy'
      game_factory = RpgFactory.new
    elsif game_type== :arcade
      title = 'Double Dragon'
      game_factory = ArcadeFactory.new
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
