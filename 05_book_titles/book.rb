class Book
	attr_accessor :title

	def title
		title_array = @title.split
		title_array.each do |word|
			if ["and", "in", "the", "of", "a", "an"].index(word) == nil  
				word.capitalize!				
			end			
		end
		title_array[0].capitalize!
		title_array.join(" ")
	end
end
