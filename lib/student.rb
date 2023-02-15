class Student
  attr_reader :name,
              :age,
              :scores

  def initialize(hash)
    @name = hash[:name]
    @age = hash[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    @scores.sum.fdiv(@scores.size)
  end
end