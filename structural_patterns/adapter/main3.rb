require 'models.rb'

console = PalConsole.new

#1 - creating a singleton class
final_fantasy = NtscGame.new("Final Fantasy")

def final_fantasy.play
  run  
end

console.play_game(final_fantasy)


#2 - adding methods opening the singleton class directly
winning_eleven = NtscGame.new("Winning Eleven")

class << winning_eleven
  def play
    run
  end
end

console.play_game(winning_eleven)


#3 - adding methods from a module
thunderforce = NtscGame.new("Thunderforce")

module Foo
  def play
    run
  end
end

thunderforce.extend(Foo)

console.play_game(thunderforce)


#4 - adding methods inside an instance_eval call 
dragons_lair = NtscGame.new("Dragons Lair")

dragons_lair.instance_eval <<EOT
  def play
    run
  end
EOT

console.play_game(dragons_lair)
