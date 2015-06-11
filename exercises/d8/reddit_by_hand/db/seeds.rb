# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
user = User.create(name: "Alex", user_name: "xenyb")
Category.destroy_all
category = Category.create(name: "funny")
Story.destroy_all
story1 = Story.create(title: "LOL CAT", body: "Look at all the cats", user_id: user.id, category_id: category.id)
story2 = Story.create(title: "knock knock", body: "who's there", user_id: user.id, category_id: category.id)
story3 = Story.create(title: "JOKE!!!!", body: "this joke isn't funny", user_id: user.id, category_id: category.id)
story4 = Story.create(title: "toast face", body: "there's a face in my toast", user_id: user.id, category_id: category.id)
story5 = Story.create(title: "this guy fell", body: "lets all laugh at him", user_id: user.id, category_id: category.id)
