class Outcome
  def initialize(sudoku)
    @grid = sudoku
  end

  def message
    if @grid.valid?
      'This sudoku is valid' + suffix
    else
      'This sudoku is invalid.'
    end
  end

  private
  def suffix
    if @grid.completed?
      '.'
    else
      ', but incomplete.'
    end
  end
end
