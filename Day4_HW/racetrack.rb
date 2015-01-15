require './race_time.rb'


class RaceTrack

	attr_accessor :lane
	attr_accessor :move


	def initialize 
		slef.lane = "- -" * 60
		self.move = 0
	end		


	def self.start_race display_all_horses RaceTrack
		puts "Pick your steed. Choose 1, 2, 3, or 4"
		puts @@display_all_horses
		Pick = gets.chomp 
			if Pick = 1 
				puts penny.Icon 
			elsif Pick = 2
				puts melly.Icon
			elsif Pick = 3
				puts karl.Icon
			elsif Pick = 4
				puts bnm.Icon
		puts "Press Enter to Begin Race" && RaceTrack.horse_location
	end	

	def self.track_of_destiny
		puts lane
		puts penny.icon
		puts lane
		puts melly.icon
		puts lane
		puts karl.icon
		puts lane


	def self.horse_location icon track_of_destiny
		puts
			penny.icon = [0]
			melly.icon = [0]
			karl.icon = [0]
			bnm.icon = [0]
	end		


	def self.the_race icon move
		 move = gets.chomp

		 do Horse.icon.each |move| 
		 	puts horse_location + rand [1 .. 7]
			while location.any <  [0,179]
				puts "hit enter again to continue race"
			else 
				puts "We have a winner"
			end
		end		
	end	

				
				






