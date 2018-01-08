def roll(sides, number=1)
	roll_array = []
	number.times do
		roll_value = rand(sides) + 1
		roll_array << roll_value
	end
	total = 0
	roll_array.each do |roll|
		puts "First Die: #{roll}"
		new_total = total + roll 
		total = new_total
	end
	puts "Total: #{total}"
end

puts "We're rolling one six sides die!"
puts roll(6)

puts "======"

puts "Now we're rolling 4 six sids dice!"
puts roll(6, 4)