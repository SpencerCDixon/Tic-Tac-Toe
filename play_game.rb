require './gameboard.rb'
require './player.rb'

board = Gameboard.new

#Get player names and set them accordingly
print "Player One's Name: "
player_1_name = gets.chomp
print "Player Two's Name: "
player_2_name = gets.chomp
p1 = Player.new(player_1_name)
p1.id = 'X'
p2 = Player.new(player_2_name)
p2.id = 'O'
puts

while true
#Player 1 turn
p1.player_turn(board)
board.take_turn(p1.number,p1)
board.check_for_win(p1)

#Player 2 turn
p2.player_turn(board)
board.take_turn(p2.number,p2)
board.check_for_win(p2)
puts
end
