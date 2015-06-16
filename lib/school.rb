class School

  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = Hash.new{|hash, key| hash[key] = []}
  end

  def add_student(student_name, grade)
    # if @roster.has_key?(grade)
    #   @roster[grade] << student_name
    # else 
    #   @roster[grade] = [student_name]
    # end
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort!
    end
  end

end