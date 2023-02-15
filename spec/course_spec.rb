require 'rspec'
require 'spec_helper'

RSpec.describe Course do
  describe '#initialize' do
    it 'exists' do
      course = Course.new('Calculus', 2)

      expect(course).to be_a(Course)
      expect(course.name).to eq('Calculus')
      expect(course.capacity).to eq(2)
      expect(course.students).to eq([])
    end
  end
end