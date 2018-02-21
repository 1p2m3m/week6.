class Employee
  attr_accessor :name, :age, :yearly_salary, :gender

  def initialize(name, age, yearly_salary, gender)
    @name = name
    @age = age
    @yearly_salary = yearly_salary
    @gender = gender
  end

  def age_by_one_year
    if @gender == "female" && @age < 63
      @age = @age.to_i + 1
      puts "you are #{@age} not yet retired, keep working"
      puts "you have #{64 - @age} year(s) left until you retire"
    elsif @gender == "female" && @age >= 64
      puts "you are retired"
    elsif @gender == "male" && @age < 65
      @age = @age.to_i + 1
      puts "you are #{@age} not yet retired, keep working"
      puts "you have #{65 - @age} year(s) left until you retire"
    else @gender == "male" && @age >= 65
      puts "your are retired"
    end
  end
end

employee_1 = Employee.new("Maria", 55, "100k", "female")
employee_2 = Employee.new("John", 64, "200k", "male")

employee_1.age_by_one_year
employee_1.age_by_one_year
employee_2.age_by_one_year
employee_2.age_by_one_year
