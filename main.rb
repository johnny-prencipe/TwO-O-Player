require "./components/player"
require "./components/playfield"

p2        = Player.new('Hero')
p1        = Player.new('Protagonist')
Game      = Playfield.new(p1, p2)