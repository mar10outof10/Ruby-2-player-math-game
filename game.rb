class Game

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @currentPlayer = p1
  end 

  def gameLoop()
    
    puts "Welcome to Math Game!"

    while true

      while @p1.lives > 0 && @p2.lives > 0
        puts "----- #{@currentPlayer.name}'S Turn -----"
        playerTurn(@currentPlayer)
        if @currentPlayer.id == 'P1'
          @currentPlayer = @p2
        else
          @currentPlayer = @p1
        end
      end

      gameOver()
      break
    end
  end

  def playerTurn(player)

    puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
    @question = Question.new
    puts "#{player.name} What does #{@question.num1} plus #{@question.num2} equal?"

    @response = gets.chomp.to_i
    puts @response
    if @response == @question.answer
      puts "Good answer!"
    else
      puts "WRONG! The answer is #{@question.answer}"
      player.loseLife
    end
  end

  def gameOver()

    if @p1.lives > 0
      puts "Player 1 wins with a score of #{@p1.lives}/3!"
    else
      puts "Player 2 wins with a score of #{@p2.lives}/3!"
    end

    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

  
end