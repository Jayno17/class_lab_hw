require('minitest/autorun')
require('minitest/reporters')
require_relative('../student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test
def setup
  @new_student = Student.new("Ahmed", "E37")
end

  def test_student_name
  assert_equal("Ahmed", @new_student.student_name)
  end

  def test_cohort
    assert_equal("E37", @new_student.cohort)
  end

  def test_set_student_name
    @new_student.student_name = "Luke"
    assert_equal("Luke", @new_student.student_name)
  end

  def test_set_cohort
    @new_student.cohort = "G12"
    assert_equal("G12", @new_student.cohort)
  end

  def test_student_says
    assert_equal("I can talk!", @new_student.talk)
  end

  def test_favourite_language
    assert_equal("I love Ruby!", @new_student. say_favourite_language)
  end
end
