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

  describe '#full?' do
    it 'is not full when initialized' do
      course = Course.new('Calculus', 2)

      expect(course.full?).to eq(false)
    end
  end
end