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
	
	str = response
	articles = %w{of over and the}

	str.gsub(/(^\w+)|(\w+)/) do
		$1 ? $1.capitalize :
			articles.include?($2) ? $2 : $2.capitalize
	end
		
end