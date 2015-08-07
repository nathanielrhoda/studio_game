def say_hello(name)
	puts "I'm #{name.capitalize}."
end

puts say_hello("larry")
puts say_hello("curly")
puts say_hello("moe")
puts say_hello("shemp")


def title(name, health)
	"I'm #{name.capitalize} with a health of #{health}."
end

puts title("larry", 60)
puts title("curly", 125)
puts title("moe",100)
puts title("shemp", 90)


def time
	current_time = Time.new
	current_time.strftime("%I:%M:%S")
end

def intro(name, health=100)
	puts "I'm #{name.capitalize} with a health of #{health} as of #{time}"
end

intro("moe", 60)
intro("curly", 125)
intro("larry", 60)
intro("shemp", 90)

class Player
	def initialize(name, health=100)
		@name = name
		@health = health
	end

	def greeting
		puts "I'm #{@name.capitalize} with a health of #{@health}"
	end

	def blam
		puts "#{@name} got blammed!"
	end

	def w00t
		@health +=15
		puts "#{@name} got w00ted!"
	end

	def to_s
		"I'm #{@name} with a health of #{@health}"
	end
end

player1 = Player.new("moe", 100)
puts player1.greeting
player2 = Player.new("larry", 60)
puts player2.greeting
player3 = Player.new("curly", 125)
puts player3.greeting
player4 = Player.new("shemp", 90)
puts player4.greeting

player1.blam
puts player1.greeting
player2.w00t
puts player2.greeting
player3.blam
puts player3.greeting
player4.w00t
puts player4.greeting


# class Player
# 	attr_reader :health
# end

# puts player1.health
# puts player2.health
# puts player3.health
# puts player4.health

class Player
	attr_accessor :name
	attr_reader :health
end

# player1.name = "moe"
# puts player1.name
# player2.name = "larry"
# puts player3.name
# player3.name = "curly"
# puts player3.name
# player4.name = "shemp"
# puts player4.name
# puts player1.health
# puts player2.health
# puts player3.health
# puts player4.health


class Player
	def score
		@health + @name.length
	end

	def to_s
		"I'm #{@name} with a health of #{@health} and a score of #{score}"
	end
end

player1.name = "moe"
puts player1.name
player2.name = "larry"
puts player2.name
player3.name = "curly"
puts player3.name
player4.name = "shemp"
puts player4.name
puts player1.health
puts player2.health
puts player3.health
puts player4.health


name1 = 'larry'
name2 = 'curly'
name3 = 'moe'
health1 = 60
health2 = 70
health3 = 90

puts "#{name1}'s health is #{health1}"
puts "#{name2}'s health is #{health1 * 3}" 
puts "#{name3}'s health is #{health1 / 9.0}" 



class Player
	attr_reader :health
end

puts player1.health
puts player2.health
puts player3.health

class Player
	attr_reader :name
	attr_accessor :health
end

puts player2.name = "Lawrence"
puts player2.name
puts player2.health = (75)
puts player2.health

players = [player1, player2, player3, player4]
puts "There are #{players.size} players in the game"

players.each do |player|
	puts player
end

players.each do |player|
	player.blam
	player.w00t
	player.w00t
	puts player
end

players.each do |player|
	puts player.health
end

# class Game
# 	def initialize(title)
# 		@title = title
# 		@players = []
# 	end

# 	def add_player(a_player)
# 		@players << a_player
# 	end

# 	def play
# 		puts "There are#{@players.size} players in #{@title}"
# 		@players.each do |player|
# 			puts player
# 		end

# 		@player.each do |player|
# 			player.blam
# 			player.w00t
# 			player.w00t
# 			puts player
# 		end
# 	end
# end

# player1 = Player.new("moe", 100)
# player2 = Player.new("larry", 60)
# player3 = Player.new("curly", 125)	

# knuckleheads = Game.new("Knuckleheads")
# knuckleheads.add_player(player1)
# knuckleheads.add_player(player2)
# knuckleheads.add_player(player3)

# knuckleheads.play

context "with a health greater than 100" do
	before do
		@player = Player.new("larry",150)
	end

	it "is strong" do
		@player.strong?.should be_true
	end
end

require_relative 'player'

describe Player do

	before do
		@initial_health = 150
		@player = Player.new("larry", @initial_health)
	end

	it "has a capitalized name" do
		@player.name.should == "Larry"
	end

	it "has an initial health" do
		@player.health.should == 150
	end

	it "has a string representation" do
		@player.to_s.should == "I'm Larry with a health of 150 and a score of 155"
	end

	it "computes a score as the sun of its health and length of name" do
		@player.score.should == (150 + 5)
	end

	it "increases health by 15 when w00ted" do
		@player.w00t
		@player.health.should == @initial_health + 15
	end

	it "decreases health by 10 when blammed" do
		@player.blam
		@player.health.should == @initial_health - 10
	end
end
end