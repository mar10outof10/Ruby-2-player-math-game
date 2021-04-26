class User
  
  attr_accessor :id, :name, :lives
  def initialize(playerNum)
    case playerNum
    when 1
      @id = 'P1'
      @name = 'Player 1'
    when 2
      @id = 'P2'
      @name = 'Player 2'
    end
    @lives = 3
  end

  def loseLife
    @lives -= 1
  end
  
end