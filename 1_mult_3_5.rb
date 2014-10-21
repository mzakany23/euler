

def find(num, mult=[3,5])
	all_multiples = []
	
	for i in 2..num-1
		mult.each {|num| all_multiples << i if i % num == 0 }
	end
	
	sum = 0
	all_multiples.uniq.inject(sum) {|sum,num| sum += num}
end


p find(10000,[3,4,5,6])
