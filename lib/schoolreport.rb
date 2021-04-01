class SchoolReport
  def self.report(string)
    return "No results given" if string == ""

    grade = string.downcase.split(", ")
    green_counter = 0
    red_counter = 0
    amber_counter = 0
    grade.select { |grade| green_counter+= 1 if grade == "green"}
    grade.select { |grade| red_counter+= 1 if grade == "red"}
    grade.select { |grade| amber_counter+= 1 if grade == "amber"}
    result = []
    result << "Green: #{green_counter}" if green_counter != 0
    result << "Amber: #{amber_counter}" if amber_counter != 0
    result << "Red: #{red_counter}" if red_counter != 0
    result.join("\n")
  end
end