class Game
  attr_accessor :title
  def initialize(title)
    @title = title
  end
end

class PalGame < Game
  def play
    puts "I am the Pal version of #{@title} and I am running!"  
  end
end

class NtscGame < Game  
  def run
    puts "I am the NTSC version of #{@title} and I am running!"  
  end
end

class Console
end

class PalConsole < Console
  def play_game(game)
    game.play  
  end
end

class NtscConsole < Console
  def run_game(game)
    game.run  
  end
end