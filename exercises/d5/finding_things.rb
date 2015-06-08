def index_of(string, letter) 
	split = string.split(//)
	split.each_with_index do |let, index|
		return index if let == letter
	end
	-1
end

def find_by_name(array , string)
	array.each do |hash|
		return hash[:id] if hash[:name] == string
	end
	-1
end

def filter_by_name(array , string)
	results_list = []
	array.each do |hash|
		results_list << hash[:id] if hash[:name] == string
	end
	results_list
end

people = [
  {
    :id => 1,
    :name => "bru"
  },
  {
    :id => 2,
    :name => "ski"
  },
  {
    :id => 3,
    :name => "brunette"
  },
  {
    :id => 4,
    :name => "ski"
  }
]
p find_by_name(people, "ski")
# => {:id=>2,:name=>"ski"}
p find_by_name(people, "kitten!")
# => nil
p filter_by_name(people, "ski")
# => [{:id=>2,:name=>"ski"}, {:id=>4,:name=>"ski"}]
p filter_by_name(people, "bru")
# => [{:id=>1,:name=>"bru"}] (Note this is still an array)
p filter_by_name(people, "puppy!!!")
# => []