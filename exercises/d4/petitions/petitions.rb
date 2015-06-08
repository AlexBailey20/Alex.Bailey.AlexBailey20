require 'rest-client'
require 'json'


#greet the user
puts "Hello! Welcome to Petitions!"

puts "What kind of petitions would you like to see? ('open' or 'closed')"

status = gets.strip
offset = 0

puts "Showing petitions of status #{status}"

puts 

while true

#get the petitions
#petitions = ["Gun Control", "Cannabis", "Immigration"]
begin
response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json?status=#{status}&offset=#{offset}"
rescue RestClient::ResourceNotFound
	puts "Sorry, that URL does not exist."
end

parsed_response = JSON.parse(response)

petitions = parsed_response["results"]

if petitions.empty?
	puts "No more petitions at this time."
	break
end

#print each petition
petitions.each_with_index do |petition, index|
	puts "#{index+1+offset}. [#{petition["status"].upcase}] #{petition["title"]}"
end
offset += 10
puts "Would you like to see more? (y/n)"

break if gets.strip == "n"
puts

end

#goodbye
puts "Thanks, bye!"