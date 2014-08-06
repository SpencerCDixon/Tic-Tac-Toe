require './gameboard'

class Player

  attr_reader :name
  attr_accessor :number, :id

  def initialize(name)
    @name = name
    @number = ''
    @id = ''
  end

  def player_turn(gameboard)
    gameboard.show_board
    puts
    puts "It's #{self.name.capitalize}s turn."
    puts "Which square would you like to go on?"
    @number = gets.chomp
  end

end
