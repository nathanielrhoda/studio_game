class Player
	def initialize(name, health)
		@name  = name
		@health = health
	end


	def to_s
		"Hello my name is #{@name} with a health of #{@health}"
	end


	def blam
		puts "#{@name} got blammed for not complying with the law"
	end


	def w00t
		puts "#{@name} got w00ted for looking away"
	end


	def smacked
		puts "#{@name} got smacked for laughing"
	end
end

player1 = Player.new("moe", 120)
puts player1

player2 = Player.new("larry", 50)
puts player2

player3 = Player.new("curly", 320)
puts player3

player4 = Player.new("shemp", 147)
puts player4 

player1.blam
puts player1

player2.w00t
puts player2

player3.smacked
puts player3

player4.blam
puts player4

