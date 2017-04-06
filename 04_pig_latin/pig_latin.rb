def translate words

	words = words.split

	words.map! do |word|
		if is_vowel(word[0])
			word += "ay"		
		elsif word[0] == "s" and word[1] == "q" and word[2] == "u"
			word = word.split("")
			temp = ""
			temp = word.shift(3)
			word = word.push(temp)
			word = word.join + "ay"
		elsif word[0] == "q" and word[1] == "u"
			word = word.split("")
			temp = ""
			temp = word.shift(2)
			word = word.push(temp)
			word = word.join + "ay"				
		elsif !is_vowel(word[0]) and !is_vowel(word[1]) and !is_vowel(word[2])
			word = word.split("")
			temp = ""
			temp = word.shift(3)
			word = word.push(temp)
			word = word.join + "ay"
		elsif !is_vowel(word[0]) and !is_vowel(word[1])			
			word = word.split("")
			temp = ""
			temp = word.shift(2)
			word = word.push(temp)
			word = word.join + "ay"			
		elsif  !is_vowel(word[0])
			word = word.split("")
			temp = ""
			temp = word.shift
			word = word.push(temp)
			word = word.join + "ay"
		end
	end

	words.join(" ")

end



def is_vowel letter
	if letter == "a" or letter == "e" or letter == "i" or letter == "o" or letter == "u"
		true
	else
		false
	end
end		

puts translate("hello world what are you doing")
