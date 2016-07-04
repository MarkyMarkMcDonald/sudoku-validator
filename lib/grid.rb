class Grid
  def initialize(rows, columns, ninths)
    @rows = rows
    @columns = columns
    @ninths = ninths
  end

  def rows
    @rows.map do |row|
      row.select &one_through_nine?
    end
  end

  def columns
    @columns.map do |column|
      column.select &one_through_nine?
    end
  end

  def ninths
    @ninths.map do |ninth|
      ninth.select &one_through_nine?
    end
  end

  def one_through_nine?
    Proc.new do |number|
      number.between?(1, 9)
    end
  end

end