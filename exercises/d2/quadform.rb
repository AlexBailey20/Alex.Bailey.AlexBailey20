puts "Hey bru (South African for \"bro\"). Let's compute some quadform."
puts "Give me an A: "
a = gets.strip.to_f
puts "Give me a B: "
b = gets.strip.to_f
puts "Give me a C: "
c = gets.strip.to_f
puts "beep computing boop boop..."
dis = (b*b - 4*a*c)
if (dis < 0)
	puts "x is non-real"
elsif(dis ==0)
	puts "x is"
	x = (-b + Math.sqrt(dis))/(2*a)
	puts "#{x}"
else
	puts "x is either"
	x = (-b + Math.sqrt(b*b - 4*a*c))/(2*a)
	puts "#{x}"
	x = (-b - Math.sqrt(b*b - 4*a*c))/(2*a)
	puts "or"
	puts "#{x}"
end
puts "Goodbye!"