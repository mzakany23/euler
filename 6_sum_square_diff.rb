
starting = 1
ending = 100

sums 		= (starting..ending).inject(sums=0) {|sum, num| sum += num**2}
squ	= (starting..ending).inject(square=0) {|squ, num| squ += num}**2
p squ-sums
