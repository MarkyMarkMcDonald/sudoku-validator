require_relative './sudoku'
require_relative './sudoku_validator'
require_relative './outcome'

class Validator
  def initialize(puzzle_string)
    @puzzle_string = puzzle_string
  end

  def self.validate(puzzle_string)
    new(puzzle_string).validate
  end

  def validate
    sudoku = Sudoku.parse(@puzzle_string)
    sudoku_validator = SudokuValidator.new(sudoku.grid)
    outcome = Outcome.new(sudoku_validator)
    outcome.message
  end
end
