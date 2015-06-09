#Creating a User with the handle @handle, name Steve and 14 followers
User.create(handle: "@handle", name: "Steve" , followers: 14)
#The third User in my app, this user has ID 3
user = User.find(3)
User.find_by(name: "Steve")
User.where(followers: 10)
#Change the name to Carl, this also saves
user.update_attributes(name: "Carl")
Tweet.create(body: "Awesome Tweet!", user_id: 3)
tweet = Tweet.find(4)
tweet.update_attributes(body: "Fun Tweet!")
tweet.destroy


i = 1
while i<11
	User.create(handle: "@#{i}", name: "Alex#{i}", followers: i)
	i+=1
end
#i will have to be the index of the first of the 10, this program assumes it starts at ID 1

i = 1
while i<11
	User.find(i).destroy
	i+=1
end

#i is given a 3 offset in the find function to account for the three tweets already present in my app
i = 1
while i<11
	Tweet.create(body: "This is the #{i} tweet", user_id: 1)
	tweet = Tweet.find(i+3)
	tweet.update_attributes(body: "Ruby is fat")
	i+=1
end

Tweet.find(7).update_attributes(body: "Ruby is getting even fatter")
