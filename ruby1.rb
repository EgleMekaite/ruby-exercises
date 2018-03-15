puts "What is your full name?"
full_name=gets.chomp
puts "Hi, #{full_name}!"
puts "What is your street address?"
street_address = gets.chomp
#puts street_address.split(' ')
first_name = full_name.split(' ').first
last_name = full_name.split(' ').last
block_letter = street_address.split(' ').first.split('').last
#street_number = street_address.split(' ').first.split('').tap(&:pop).join
street_name = street_address.split(' ').first
street_number = street_name.chomp(block_letter)
block_letters = Hash[
    "A" => "A-Block",
    "B" => "B-Block",
    "C" => "C-Block",
    "D" => "D-Block"
]
block_letter_value = block_letters[block_letter]
puts "Your first name is #{first_name}."
puts "Your last name is #{last_name}."
puts "Your street number is #{street_number}."
puts "Your street letter means: #{block_letter_value}."