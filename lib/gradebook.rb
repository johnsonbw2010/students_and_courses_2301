class Gradebook
  attr_reader :instructor,
              :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    class_1 = @courses[0].name
    class_2 = @courses[1].name
    students_1 = @courses[0].students
    students_2 = @courses[1].students
    hash = Hash.new
    hash[class_1] = students_1
    hash[class_2] = students_2
    hash
  end

  def students_below(threshold)
    new_arr = []
    array_students = []
      @courses.each do |course|
        new_arr << course.students[0]
      end
      new_arr.each do |student|
        if student.grade < threshold
          array_students << student
        end
      end
      array_students
  end
end
