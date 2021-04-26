require './game.rb'
require './question.rb'
require './user.rb'

player1 = User.new()
player2 = User.new()
game = Game.new(player1, player2)

while true
  game.startGame()
  break
end