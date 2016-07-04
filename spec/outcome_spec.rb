require_relative '../lib/outcome'

class CompleteInvalidPuzzle
  def valid?
    false
  end

  def completed?
    true
  end
end

class CompleteValidPuzzle
  def valid?
    true
  end

  def completed?
    true
  end
end

class IncompleteValidPuzzle
  def valid?
    true
  end

  def completed?
    false
  end
end

describe Outcome do

  describe 'when valid' do
    it('gives a positive message') do
      outcome = Outcome.new(CompleteValidPuzzle.new)
      expect(outcome.message).to include('This sudoku is valid')
    end

    describe 'but incomplete' do
      it('adds a notice to the end of the message') do
        outcome = Outcome.new(IncompleteValidPuzzle.new)
        expect(outcome.message).to end_with('but incomplete.')
      end
    end
  end

  describe 'when invalid' do
    it('gives a negative message') do
      outcome = Outcome.new(CompleteInvalidPuzzle.new)
      expect(outcome.message).to include('This sudoku is invalid')
    end
  end
end


