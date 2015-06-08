require 'rest-client'
require 'json'


#greet the user
puts "Hello! Welcome to Petitions!"

offset = 0

puts 

while true

#get the petitions
#petitions = ["Gun Control", "Cannabis", "Immigration"]
begin
response = RestClient.get "http://www.reddit.com/r/funny.json?count=#{offset}"
rescue RestClient::ResourceNotFound
	puts "Sorry, that URL does not exist."
end

parsed_response = JSON.parse(response)

data = parsed_response["data"]
children = data["children"]

if children.empty?
	puts "No more posts at this time."
	break
end

#print each petition
children.each_with_index do |entry, index|
	puts "#{index+offset}. #{entry["data"]["title"]}"
end
offset += 25
puts "Would you like to see more? (y/n)"

break if gets.strip == "n"
puts

end

#goodbye
puts "Thanks, bye!"