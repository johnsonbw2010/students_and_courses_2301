require 'spec_helper'

RSpec.describe Gradebook do
  describe '#initialize' do
    it 'exists' do
      gradebook = Gradebook.new('Mr. White')

      expect(gradebook).to be_a(Gradebook)
      expect(gradebook.instructor).to eq('Mr. White')
      expect(gradebook.courses).to eq([])
    end
  end
end