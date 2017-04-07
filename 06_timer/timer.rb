class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		Time.at(@seconds).utc.strftime("%H:%M:%S")
	end

	def padded num
		if num < 60
			Time.at(num).utc.strftime("%S")	
		end
		
	end
end

