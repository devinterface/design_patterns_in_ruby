class Game
  attr_accessor :title
  def initialize(title)
    @title = title
  end
end

class Rpg < Game
  def description
    puts "I am a RPG named #{@title}"
  end
end

class Arcade < Game
  def description
    puts "I am an Arcade named #{@title}"
  end
end
