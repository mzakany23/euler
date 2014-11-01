require_relative 'helper/data'
include TheData

class Hurray

	attr_accessor :rows, :cols

	def initialize(num=nil)
		@num = num
		split_rows
	end

	def show
		@final
	end

	def dimensions
		"[x][y] : [#{@final.count}][#{@count}]"
	end

	def spread
		Array.new(@rows) {Array.new(@cols)}
	end

	def read
		@num
	end

	def largest_product(num)
		obj = read.split(/\n\,/)[0].gsub(/\n/,'')
		result = 0
		for x in 0..obj.length-1 
			check = 1
			(0..num).each do |c|
				check *= obj[x+c].to_i
			end
			result = check if check > result
		end
		result
	end


	private

	def split_rows
		@final = []
		line = ""
		@count = 0
		@num.each_char do |char| 
			if char.match(/\n/)
				@final << line
				line = ''
				@count = 0
			else
				line += char	
				@count += 1
			end
		end

		beg  = @num.length-@count
		wall = @num.length-1

		@final << @num[beg..wall]
		@rows = @final.count
		@cols = @count
		self
	end

end

p Hurray.new(DATA[:num]).largest_product(12)












