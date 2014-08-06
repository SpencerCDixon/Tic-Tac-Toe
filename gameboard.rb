require_relative 'cell'
require_relative 'player'
require 'pp'


class Gameboard
  CELLS = %w{a1 a2 a3 b1 b2 b3 c1 c2 c3}

  attr_accessor :gameboard

  def initialize
    @gameboard = self.build_board
  end

  def build_board
    cells = []

    CELLS.each do |name|
      cells << Cell.new(name)
    end
    cells
  end

  def a_cells
    a_cells = gameboard.slice(0..2)
    a_cells
  end

  def b_cells
    b_cells = gameboard.slice(3..5)
    b_cells
  end

  def c_cells
    c_cells = gameboard.slice(6..8)
    c_cells
  end

  def d_cells # 3, 5, 7
    d_cells = []
    d_cells << gameboard[6]; d_cells << gameboard[4]; d_cells << gameboard[2]
    d_cells
  end

  def e_cells # 1, 5, 9
    e_cells = []
    e_cells << gameboard[0]; e_cells << gameboard[4]; e_cells << gameboard[8]
    e_cells
  end

  def f_cells # 1, 4, 7
    f_cells = []
    f_cells << gameboard[0]; f_cells << gameboard[3]; f_cells << gameboard[6]
    f_cells
  end

  def g_cells #2, 5, 8
    g_cells = []
    g_cells << gameboard[1]; g_cells << gameboard[4]; g_cells << gameboard[7]
    g_cells
  end

  def h_cells
    h_cells = []
    h_cells << gameboard[2]; h_cells << gameboard[5]; h_cells << gameboard[8]
    h_cells
  end

  def line
   "----|----|----"
  end

  def show_board
    puts "Number Options"
    example = [[1,2,3],
               [4,5,6],
               [7,8,9]]
    example.each {|row| p row}
    puts
    board = [a_cells.map{|cell| cell.default_mark},
      line,
      b_cells.map{|cell| cell.default_mark},
      line,
      c_cells.map{|cell| cell.default_mark}]
    board.each {|row| p row}
  end

  def take_turn(number, player)
    if player.id == 'X'
      mark = 'X'
    else
      mark = 'O'
    end
    new_number = number.to_i - 1

    until gameboard[new_number].default_mark == '-'
      puts "Someone has already gone there."
      print "Please pick a new number: "
      num = gets.chomp.to_i
      new_number = num - 1
    end
    gameboard[new_number].default_mark = mark

  end

  def check_for_win(player)
    if a_cells.all? {|mark| mark.default_mark.include?('X')} || a_cells.all? {|mark| mark.default_mark.include?('O')} then win(player) end
    if b_cells.all? {|mark| mark.default_mark.include?('X')} || b_cells.all? {|mark| mark.default_mark.include?('O')} then win(player) end
    if c_cells.all? {|mark| mark.default_mark.include?('X')} || c_cells.all? {|mark| mark.default_mark.include?('O')} then win(player) end
    if d_cells.all? {|mark| mark.default_mark.include?('X')} || d_cells.all? {|mark| mark.default_mark.include?('O')} then win(player) end
    if e_cells.all? {|mark| mark.default_mark.include?('X')} || e_cells.all? {|mark| mark.default_mark.include?('O')} then win(player) end
    if f_cells.all? {|mark| mark.default_mark.include?('X')} || f_cells.all? {|mark| mark.default_mark.include?('O')} then win(player) end
    if g_cells.all? {|mark| mark.default_mark.include?('X')} || g_cells.all? {|mark| mark.default_mark.include?('O')} then win(player) end
    if h_cells.all? {|mark| mark.default_mark.include?('X')} || h_cells.all? {|mark| mark.default_mark.include?('O')} then win(player) end
  end

  def win(player)
    puts
    puts
    puts "#{player.name.capitalize} Wins!"
    exit
  end

end
