def whisper(str)
	puts "#{str.downcase}"
end

def twist(str)
	puts "#{str.split(//).shuffle.join}"
end

def invert(hash)
	return if hash == nil
	newhash={}
	hash.each do |key,value|
		newhash[value] = key
	end
puts newhash
end
hash = {}
invert(hash)
whisper("HI THERE I AM HUNGRY")
twist("HI THERE I AM STILL HUNGRY")