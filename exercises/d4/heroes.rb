hero = {
	name: "Haley",
	health: 100,
	power: 5,
	items: ["keyboard", "sword", "cheetah"],
	exp: 0
}

monsters = 
[monster = {
	name: "Isaac",
	health: 10000,
	power: 1,
	type: "Salman"
},

UnimportantGoblin = {
	name: "Alex",
	health: 69,
	power: 0,
	type: "Goblin"
},

Johnny = {
	name: "Johnny",
	health: 2,
	power: 45,
	type: "Dragon"
}]

def attack(attacker, defendant)
	defendant[:health] -= attacker[:power]
	unless atacker[:exp].nil?
	attacker[:exp] += 1
end
end

puts "before: "
puts monsters.first[:health]
puts hero[:exp]
attack(hero, monsters[0])
puts "after: "
puts monsters.first[:health]
puts hero[:exp]