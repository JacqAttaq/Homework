name = "Bubba_Joe_Clams"
age = 25
if age.odd? == true
	puts "True"
else
 puts "False"
end

body_temp = 98.8
smells_like_eggs = true
DHEC_rating = 'd'

print name 
puts " "
puts name.reverse
puts name.length
puts name.upcase
puts name.capitalize
puts name.to_i

print age 
puts " "
puts age.to_s.reverse
puts age.to_i.next
puts age.odd?
if age > 20
	puts "You old"
else 
	puts "You a baby"
end

# print DHEC_rating
# puts DHEC_rating.class



print body_temp
puts " "
puts body_temp.to_s.next
puts body_temp.to_i
puts body_temp.to_f * 2
puts body_temp - 15
puts body_temp.truncate
puts body_temp.floor

if name = smells_like_eggs
	puts "Ewwww"
else
	puts "Whew"
end

if DHEC_rating > 'c'
	puts "Do not eat here"
else
	puts "Good to go"
end

if smells_like_eggs == true
	if DHEC_rating == 'd'
		puts "Awful Waffle"
	end
end

if age == 25
	if smells_like_eggs == true
		puts "Groder"
	else
		puts "Sweet"
	end
end
