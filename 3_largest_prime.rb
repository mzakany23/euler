require 'prime'


def largest_prime(max)
	check = 3

	while max >= check do 
		if check.prime? && max % check == 0
			best = check
			max = max / check
		else
			check += 2
		end
	end	
	p best
end

largest_prime(500)