class SudokuValidator
  def initialize(grid)
    @grid = grid
  end

  def valid?
    sections_valid?(@grid.ninths) &&
    sections_valid?(@grid.rows) &&
    sections_valid?(@grid.columns)
  end

  def completed?
    sections_complete?(@grid.ninths) &&
    sections_complete?(@grid.rows) &&
    sections_complete?(@grid.columns)
  end

  private

  def sections_valid?(sections)
    sections.all? do |section|
      section == section.uniq
    end
  end

  def sections_complete?(sections)
    sections.all? do |section|
      section.sort == [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end
  end
end