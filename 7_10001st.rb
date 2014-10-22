require 'prime'

brute_force = 10001
prime =[]
count = 1

while prime.count < brute_force
	prime << count if Prime.prime?(count)
	count += 1
end

p prime.last