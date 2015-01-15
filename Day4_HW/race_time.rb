



# start game
# draw race track, finish line
# make horses
# set loop for random horse progression
# insert cheat code

#win code - winners circle

# move= rand (1 .. 10)

class Horse

	attr_accessor :name
	attr_accessor :breed
	attr_accessor :icon
	@@display_all_horses = [ ]
	
	def initialize
		self.name = "Elvis"
		self.breed = "Arbaian"
		self.icon = "|^^| `/--/%"
		Horse.display_all_horses.push(self)
	end	
		
	def self.display_all_horses 
		"#{self.name} #{self.breed} #{self.icon}"
	end
end

penny = Horse.new
penny.name = "Pretty Penny"
penny.breed = "Thoroughbred"
penny.icon = "PP `/--/%"

melly = Horse.new
melly.name = "Smelly Melly"
melly.breed = "Quarter Horse"
melly.icon = "SM `/--/%"

karl = Horse.new	
karl.name = "Krazy Karl"
karl.breed = "Percheron"
karl.icon = "KK `/--/%"

bnm = Horse.new
bnm.name = "Bangers and Mash"
bnm.breed = "Mule"
bnm.icon = "BandM `/--/%"

p Horse.display_all_horses
