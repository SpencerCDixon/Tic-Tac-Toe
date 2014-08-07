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
    until @number == "1" || @number == "2" || @number == "3" || @number == "4" || @number == "5" || @number == "6" || @number == "7" || @number == "8" || @number == "9"
      puts "Please pick a number 1 through 9."
      @number = gets.chomp
    end
    @number
  end

end
