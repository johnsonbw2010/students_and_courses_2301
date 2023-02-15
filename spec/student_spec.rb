require 'rspec'
require './lib/student'

RSpec.describe Student do
  describe '#initialize' do
    it 'exists' do
    student = Student.new({:name => 'Morgan', :age => 21})

    expect(student).to be_a(Student)
    expect(student.name).to eq('Morgan')
    expect(student.age).to eq(21)
    expect(student.scores).to eq([])
    end
  end

  describe '#log_score' do
    it 'can log scores' do
    student = Student.new({:name => 'Morgan', :age => 21})

    expect (student.scores).to eq([])
    
    student.log_score(89)
    student.log_score(78)
    
    expect(student.scores).to eq[89, 87]
    end
  end
end