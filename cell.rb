class Cell
  include Enumerable
  attr_accessor :default_mark, :name

  def initialize(name)
    @name = name
    @default_mark = '-'
  end

end
