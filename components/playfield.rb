class Playfield
  attr_accessor :Playfield

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two

    @first_add  = rand(1...20)
    @second_add = rand(1...20)
    @sum        = @first_add + @second_add
  end

  puts "#{@player_one}, what is the sum of #{@first_add} and #{@second_add}?"

end