class User
  attr_accessor :lives

  def initialize()
    @lives = 3
  end

  def loseLife
    @lives -= 1
  end
end