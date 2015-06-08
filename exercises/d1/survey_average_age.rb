puts "Hello!"
puts "How old are you?"
your_age = gets.strip.to_f
puts "How old is your mom?"
moms_age = gets.strip.to_f
puts "How old is your dad?"
dads_age = gets.strip.to_f
average_age = (your_age + moms_age + dads_age)/3.0
puts "Thanks for answering my creepy questions! The average age of your family is #{average_age} years old!"
puts "Goodbye!"