class Student
  attr_reader :name,
              :age,
              :scores

  def initialize(hash)
    @name = hash[:name]
    @age = hash[:age]
    @scores = []
  end