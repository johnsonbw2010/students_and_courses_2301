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

  describe '#add_course' do
    it 'can contain courses' do
      gradebook = Gradebook.new('Mr. White')
      course1 = Course.new('Geometry', 2)
      course2 = Course.new('Economics', 3)
      gradebook.add_course(course1)
      
      expect(gradebook.courses.size).to eq(1)
      
      gradebook.add_course(course2)
      
      expect(gradebook.courses.size).to eq(2)
      expect(gradebook.courses).to all(be_a Course)
    end
  end
end