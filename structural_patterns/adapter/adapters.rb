class NtscToPalAdatper
  attr_accessor :game
  def initialize(game)
    @game = game
  end
  
  def play
    @game.run  
  end  
end