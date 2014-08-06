# require 'pp'
# line = %w{------------------------}
# a_row = ["A1", "|", "A2", "|", "A3"]
# b_row = ["B1", "|", "B2", "|", "B3"]
# c_row = ["C1", "|", "C2", "|", "C3"]
#
# gameboard = [a_row, line, b_row, line, c_row]
#
# gameboard.each do |row|
#   p row
# end

require './gameboard.rb'

board = Gameboard.new


board.show_board
puts
puts
board.gameboard[0].default_mark = 'X'
board.show_board
