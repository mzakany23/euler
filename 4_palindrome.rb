

palindromes = []
three_digit_numbers = []

for num in 999.downto(99)
	three_digit_numbers << num
end

three_digit_numbers.each do |pal|
	three_digit_numbers.each do |num|
		num = (pal*num).to_s
		if num[0] == num[num.length-1] && num[1] == num[num.length-2] && num[2] == num[num.length-3] 
			palindromes << num.to_i
		end
	end
end

p palindromes.sort




