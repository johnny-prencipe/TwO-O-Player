require './components/player.rb'
require './components/questions.rb'
require './components/playfield.rb'

p1 = Player.new('Max')
p2 = Player.new("Jeff")

new_game = Game.new(p1, p2)
puts new_game.game