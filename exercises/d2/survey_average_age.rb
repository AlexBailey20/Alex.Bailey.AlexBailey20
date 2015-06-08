puts "Hello!"
puts "How old are you?"
your_age = gets.strip
puts "How old is your mom?"
moms_age = gets.strip
puts "How old is your dad?"
dads_age = gets.strip
average_age = (your_age.to_i + moms_age.to_i + dads_age.to_i)/3
puts "Thanks for answering my creepy questions! The average age of your family is #{average_age} years old!"
puts "Goodbye!"