require_relative 'cell'
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

  def line
   "------------------"
  end

  def show_board
    board = [a_cells.map{|cell| cell.default_mark},
      line,
      b_cells.map{|cell| cell.default_mark},
      line,
      c_cells.map{|cell| cell.default_mark}]
    board.each {|row| p row}
  end

end
