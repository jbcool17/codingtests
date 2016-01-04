# The goal of this exercise is to convert a string to a new string where each character in the new string is '(' if that
# character appears only once in the original string, or ')' if that character appears more than once in 
# the original string. Ignore capitalization when determining if a character is a duplicate.

# Examples:

# "din" => "((("

# "recede" => "()()()"

# "Success" => ")())())"

# "(( @" => "))(("

def duplicate_encode(word)
  word_array = word.downcase.split('')
  letter_list = {}
  output = []
  
  #Counting up letters
  word_array.each do |letter|
    
    if letter_list.has_key? letter
      letter_list[letter] += 1
    else
      letter_list[letter] = 1
    end
  
  end
  
  # Creating output
  word_array.each do |letter|
    if letter_list[letter] > 1
      output << ")"
    else
      output << "("
    end
  end
  
  output.join('')
end