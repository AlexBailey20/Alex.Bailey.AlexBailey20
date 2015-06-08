engines = ["Google", "Bing", "Ask Jeeves"]
result = engines.map do |e|
  if e == "Google"
    e = "OK"
  elsif e == "Bing"
    e = "Bad!"
  else
    e = "What is that?"
  end
end

puts result