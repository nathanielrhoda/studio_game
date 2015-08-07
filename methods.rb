# def say_hello(name)
# 	puts "I'm #{name.capitalize}"
# end

# say_hello("larry")
# say_hello("curly")
# say_hello("moe")
# say_hello("shemp")

# def intro(name)
# 	puts "I'm #{name.capitalize}."
# end

# intro("moe")

# def hello(name, health)
# 	"I'm #{name.capitalize} with a health of #{health}."
# end

# puts hello("larry", 60)
# puts hello("curly", 125)
# puts hello("moe", 100)
# puts hello("shemp", 90)

# def hi(name, health=100)
# 	"I'm #{name.capitalize} with a health of #{health} and i feel good"
# end 

# puts hi("moe")

# def time
# 	current_time = Time.new
# 	current_time.strftime("%I:%M:%S")
# end

# def greeting(name, health=100)
# 	"I'm #{name.capitalize} with a health of #{health} as of #{time}."
# end

# puts greeting("moe")
# puts greeting("larry",60)
# puts greeting("curly", 125)
# puts greeting("shemp", 90)



# def say_hello(name)
# 	puts "I'm #{name.capitalize}."
# end

# puts say_hello("larry")
# puts say_hello("curly")
# puts say_hello("moe")
# puts say_hello("shemp")


# def title(name, health)
# 	"I'm #{name.capitalize} with a health of #{health}."
# end

# puts title("larry", 60)
# puts title("curly", 125)
# puts title("moe",100)
# puts title("shemp", 90)


# def time
# 	current_time = Time.new
# 	current_time.strftime("%I:%M:%S")
# end

# def intro(name, health=100)
# 	puts "I'm #{name.capitalize} with a health of #{health} as of #{time}"
# end

# intro("moe", 60)
# intro("curly", 125)
# intro("larry", 60)
# intro("shemp", 90)


name1 = 'larry'
health1 = 60
puts "#{name1.capitalize} has a health of #{health1}."

name2 = "curly"
health2 = 125
puts "#{name2.upcase} has a health of #{health2}."

name3 = "moe"
health3 = 100
puts "#{name3.capitalize} has a health of #{health3}"

name4 = "shemp"
health4 = 90
puts "#{name4.upcase} has a health of #{health4}."


def movie_listing(title)
	puts "Movie: #{title.capitalize}"
end

movie_listing("goonies")
movie_listing("ghostbusters")

a_title = "goldfinger"
puts movie_listing(a_title)