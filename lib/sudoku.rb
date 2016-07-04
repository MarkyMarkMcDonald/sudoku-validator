require_relative './grid'
require_relative './capture'

class Sudoku
  def initialize(puzzle_string)
    @puzzle_string = puzzle_string
  end

  def self.parse(puzzle_string)
    new(puzzle_string)
  end

  def grid
    ninths = Capture.new(ninths_capture, @puzzle_string).digit_groups
    rows = Capture.new(row_capture, @puzzle_string).digit_groups
    columns = Capture.new(column_capture, @puzzle_string).digit_groups
    Grid.new(rows, columns, ninths)
  end

  private
  def ninths_capture
    'A A A B B B C C C'\
    'A A A B B B C C C'\
    'A A A B B B C C C'\
    'D D D E E E F F F'\
    'D D D E E E F F F'\
    'D D D E E E F F F'\
    'G G G H H H I I I'\
    'G G G H H H I I I'\
    'G G G H H H I I I'
  end

  def row_capture
    'A A A A A A A A A'\
    'B B B B B B B B B'\
    'C C C C C C C C C'\
    'D D D D D D D D D'\
    'E E E E E E E E E'\
    'F F F F F F F F F'\
    'G G G G G G G G G'\
    'H H H H H H H H H'\
    'I I I I I I I I I'
  end

  def column_capture
    'A B C D E F G H I'\
    'A B C D E F G H I'\
    'A B C D E F G H I'\
    'A B C D E F G H I'\
    'A B C D E F G H I'\
    'A B C D E F G H I'\
    'A B C D E F G H I'\
    'A B C D E F G H I'\
    'A B C D E F G H I'
  end
end