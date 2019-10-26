puts '*******CRUD with an array*******'
names = [
  'Satish',
  'Talim',
  'Ruby',
  'Java'
]

def create(names)
  puts '---------*Insert new*---------'
  puts 'Enter a name:'
  new_name = gets.chomp
  names << new_name
  puts '**Successful**'
  puts '----------------------' 
end

def read(names)
  puts '---------View elements---------'
  names.each_with_index do |element, index|
    puts "#{index}: #{element}"
  end
  puts '------------------'
end

def update(names)
  puts '---------*Update*---------'
  read(names)
  puts 'select one element of above: '
  position = gets.to_i
  puts 'enter a name:'
  edit_name = gets.chomp
  puts '**Successful**'
  puts "#{names[position]} changed by #{edit_name}"
  names[position] = edit_name
  puts '----------------------'
end

def delete(names)
  puts '---------*Delete*---------'
  read(names)
  puts 'Select one element: '
  position = gets.to_i
  names.delete_at(position)
  puts '**deleted**'
  puts '----------------------'
end

loop do
  puts 'Choose a option:'
  puts '1.- Insert new'
  puts '2.- View elements'
  puts '3.- Update'
  puts '4.- Delete'
  puts "0.- The program ends\n"
  puts "\n"
  print 'Write the option: '
  option = gets.chomp.to_i
  case option
  when 0 then break
  when 1 then create(names)
  when 2 then read(names)
  when 3 then update(names)
  when 4 then delete(names)
  else 'Error'
  end
end
