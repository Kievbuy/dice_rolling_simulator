class Die

	def initialize(sides)
		@sides = sides
	end

	def generate_die_roll
		rand(@sides) + 1
	end

	def roll(number=1)
		roll_array = []
		number.times do
			roll_array << generate_die_roll
		end
		total = 0
		roll_array.each do |roll|
			puts "First Die: #{roll}"
			new_total = total + roll 
			total = new_total
		end
		puts "Total: #{total}"
	end

end

puts "We're rolling one six sides die!"
puts Die.new(6).roll

puts "======"

puts "Now we're rolling 4 six sids dice!"
puts Die.new(6).roll(4)