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

SIX_SIDED_DIE = Die.new(6)
EIGHT_SIDED_DIE = Die.new(8)
TEN_SIDED_DIE = Die.new(10)
TWENTY_SIDED_DIE = Die.new(20)

puts "We're rolling one six sides die!"
puts SIX_SIDED_DIE.roll

puts "======"

puts "Now we're rolling 4 six sids dice!"
puts SIX_SIDED_DIE.roll(4)