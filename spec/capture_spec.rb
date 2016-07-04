require_relative '../lib/capture'

describe Capture do
  describe 'Parsing digits out of text based on a structural pattern' do
    it('groups digits corresponding to identifiers together') do
      identifiers =
          'A B'\
          'B D'

      grid =
          '0 1'\
          '2 3'

      capture = Capture.new(identifiers, grid)

      expect(capture.digit_groups).to eql([[0], [1, 2], [3]])
    end
  end
end