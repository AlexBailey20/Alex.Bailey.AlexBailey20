class LivingThing
	def initialize(name, health, power)
		@name = name
		@health = health
		@power = power
	end
	def dead?
		puts "I'm dead." if @health <= 0
		@health <= 0
	end
end

class Hero < LivingThing
	def initialize(name, health, power, items)
		@name = name
		@health = health
		@power = power
		@items = items
		@exp = 0
	end

	def attack(defendant, power)
		defendant[:health] -= @power
		@exp += 1
	end 
end



class Monster < LivingThing
	def initialize(name, health, power, type)
		@name = name
		@health = health
		@power = power
		@type = type
	end

	def attack(defendant, power)
		defendant[:health] -= @power
	end 
end
aaron = Hero.new("Aaron", 10, 2000, ["scruff", "squash racket"])
