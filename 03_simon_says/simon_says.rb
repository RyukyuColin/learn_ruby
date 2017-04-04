def echo response

	response.to_s

end

def shout response

	response.to_s.upcase
	
end

def repeat response, n=2

	((response + ' ') * n).chop 
	
end

def start_of_word response, n

	response.to_s[0.. n - 1]
	
end

def first_word response

	response.split.first

end


def titleize response
	
	words = response.split

	words.each do |word|

		if word == 'and' or word == 'over' or word == 'the'
			word.downcase!
		elsif word.length >= 3
			word.capitalize!
		end
	end
	
	words.join ' '
		
end


# response.gsub(/\w+/) {|word| word.capitalize}