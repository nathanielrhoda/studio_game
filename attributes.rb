class Player
	attr_accessor :name
	attr_reader :health
end

class Player
	def score
		@health + @name.length
	end

	def to_s 
		"I'm #{@name} with a health of #{@health} and a score of #{score}"
	end
end

player2 = Player.new("larry", 60)
puts player2.name
player2.name = "Lawrence"
puts player2.name
puts player2.health
puts player2.score
puts player2