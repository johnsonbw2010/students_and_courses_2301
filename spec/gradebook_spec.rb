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

  describe '#list_all_students' do
    it 'can list all students in all courses' do
      gradebook = Gradebook.new('Mr. White')
      course1 = Course.new('Geometry', 2)
      course2 = Course.new('Economics', 3)
      student1 = Student.new({name: 'Morgan', age: 21})
      student2 = Student.new({name: 'Jordan', age: 29})
      course1.enroll(student1)
      course2.enroll(student2)
      gradebook.add_course(course1)
      gradebook.add_course(course2)
      expect(gradebook.list_all_students['Geometry']).to eq([student1])
      expect(gradebook.list_all_students['Economics']).to eq([student2])
    end
  end

  describe '#students_below' do
    it 'can return students below a grade threshold' do
      gradebook = Gradebook.new('Mr. White')
      course1 = Course.new('Geometry', 2)
      course2 = Course.new('Economics', 3)
      student1 = Student.new({name: 'Morgan', age: 21})
      student2 = Student.new({name: 'Jordan', age: 29})
      course1.enroll(student1)
      course2.enroll(student2)
      gradebook.add_course(course1)
      gradebook.add_course(course2)
      student1.log_score(90)
      student1.log_score(85)
      student1.log_score(88)
      student2.log_score(85)
      student2.log_score(86)
      student2.log_score(82)

      expect(gradebook.students_below(87)).to eq([student2])
      expect(gradebook.students_below(84)).to eq([])
      expect(gradebook.students_below(88)).to eq([student1, student2])
    end
  end
end