def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp 
  while !name.empty? do    
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print(students)
  filtered_students = students.select do |student|
    student[:name][0] == "B" && student[:name].length < 12
  end
  filtered_students.each_with_index do |student, index|
    puts "#{index+1} #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_while(students)
  counter = 0 
  while counter < students.size
   keys = students.values_at(counter)
   puts "#{counter} "+" #{keys[0].values[0]}"
    counter+=1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end


students = input_students
print_header
print_while(students)
print_footer(students)