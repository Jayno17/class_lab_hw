class Student
  attr_reader :student_name, :cohort
  attr_writer :student_name, :cohort
  # attr_accessor :holder_name, :balance, :type
  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

def talk
  return "I can talk!"
  end

def say_favourite_language
  return "I love Ruby!"
end
end
