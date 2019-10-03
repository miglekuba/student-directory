def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []

  puts "Enter the first name:"
  first_name = gets.chomp 

  while !first_name.empty?  
  puts "Enter your last name:"
  last_name = gets.chomp 
  if last_name.empty?
    puts "Please enter your last name!"
    last_name = gets.chomp 
  end

  puts "Enter you date of birth:"
  date_birth = gets.chomp
  if date_birth.empty?
    puts "Please enter you date of birth!"
    date_birth = gets.chomp
  end
  puts "Enter your favorite movie:"
  movie = gets.chomp  
  if movie.empty?
  puts "eyyyyy enter the name of the movie!!!"
  end
  puts "Enter your cohort"
  cohort = gets.chomp
  if cohort.empty?
    puts "enter the cohort please!"
  end

    students << {first_name: first_name, last_name: last_name, date_birth: date_birth, movie: movie, cohort: cohort}

    puts "Now we have #{students.count} students"
    puts "Enter next student's name:"
    first_name = gets. chomp 
  end
  students
end

def print(students)
  students.each do |student|
    puts "#{student[:first_name]} #{student[:last_name]} #{student[:date_birth]} #{student[:movie]} (#{student[:cohort]}"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end


students = input_students
print_header
print(students)
print_footer(students)