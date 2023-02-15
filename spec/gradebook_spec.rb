require 'spec_helper'

RSpec.describe Gradebook do
  describe '#initialize' do
    it 'exists' do
      gradebook = Gradebook.new(instructor, courses)

      expect(gradebook).to be_a(Gradebook)
    end
  end
end