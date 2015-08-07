name1 = 'larry'
health1 = 60

puts "#{name1.capitalize} has a health of #{health1}."

name2 = "curly"
health2 = 125

puts "#{name2.upcase} has a health of #{health2}." 

health2 = health1
puts "#{name2.upcase} has a health of #{health2}."

health1 = 30
puts "#{name1.capitalize} has a health of #{health1}."
puts "#{name2.upcase} has a health of #{health2}."
