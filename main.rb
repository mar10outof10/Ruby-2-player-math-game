require './game.rb'
require './question.rb'
require './user.rb'

player1 = User.new(1)
player2 = User.new(2)
game = Game.new(player1, player2)

game.gameLoop()