class Capture
  def initialize(section_capture, puzzle_string)
    @section_capture = section_capture
    @puzzle_string = puzzle_string
  end

  def digit_groups
    capture_ids.zip(puzzle_digits).inject({}) do |captures, (capture_id, entry)|
      captures[capture_id] ||= []
      captures[capture_id].push entry
      captures
    end.values
  end

  private
  def capture_ids
    @section_capture.scan(/(\w)/).flatten
  end

  def puzzle_digits
    @puzzle_string.scan(/(\d)/).flatten.map(&:to_i)
  end

end