class Game

  attr_accessor :game
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  def game
    game_master = Question.new
    turn = 0
    @player = nil

    while @p1.lives > 0 || @p2.lives > 0
      if turn % 2 == 0 
        @player = @p1
        turn += 1
      else
        @player = @p2
        turn += 1
      end

      game_master.current_player(@player)

      if @p2.lives == 0
        return puts "#{@player.name} Wins!"
      elsif @p1.lives == 0
        return puts "#{@player.name} Wins!"
      end

      game_master.ask_question()
      print "#{@player.name}> "

      answer = $stdin.gets.chomp.to_i
      if game_master.check(answer)
        puts "YES!! You are correct."
      else
        puts "Seriously? No!"
        @player.lives -= 1
      end

      puts "Player 1: #{@p1.lives}/3 vs Player 2: #{@p2.lives}/3"
      puts "----- NEW TURN -----"
    end
    
  end
end
