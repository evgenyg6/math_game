class Game

  def initialize
    @turns = 0
    @player1 = Player.new 1
    @player2 = Player.new 2
    round_start
  end

  def round_start
    question = Question.new
    @win = 0
    while @win < 1
      puts
      puts "----- NEW TURN -----"
      if (@turns == 0)
        @turns += 1
        question.ask_question(@player1)
        if (@player1.life == 0)
          game_over(@player2)
          @win = 1
        else
          show_score
        end
      else
        @turns = @turns - 1
        question.ask_question(@player2)
        if (@player2.life == 0)
          game_over(@player1)
          @win = 1
        else
          show_score
        end
      end
    end
  end

  def show_score
    puts "P1: #{@player1.life}/3 vs. P2: #{@player2.life}/3"
  end

  def game_over(winner)
    puts "----- GAME OVER -----"
    puts "Player #{winner.id} wins with a score of #{@player1.life}/3"
    puts
  end
end