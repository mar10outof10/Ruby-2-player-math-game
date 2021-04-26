class Game
  attr_accessor :p1, :p2, :question, :response

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end 

  def startGame()
    while true
      puts "Welcome to Math Game!"

      while @p1.lives > 0 && @p2.lives > 0
        puts "----- NEW TURN -----"
        puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
        @question = Question.new
        puts "Player 1: What does #{@question.num1} plus #{@question.num2} equal?"
        @response = gets.chomp.to_i
        puts @response
        if @response == @question.answer
          puts "Good answer!"
        else
          puts "WRONG! The answer is #{@question.answer}"
          @p1.lives -= 1
        end

        puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
        @question = Question.new
        puts "Player 2: What does #{@question.num1} plus #{@question.num2} equal?"
        @response = gets.chomp.to_i
        if @response == @question.answer
          puts "Good answer!"
        else
          puts "WRONG! The answer is #{@question.answer}"
          @p2.lives -= 1
        end

      end
      if @p1.lives > 0
        puts "Player 1 wins with a score of #{p1.lives}/3!"
      else
        puts "Player 2 wins with a score of #{p2.lives}/3!"
      end
      puts "----- GAME OVER -----"
      puts "Good bye!"
      break
    end
  end


end