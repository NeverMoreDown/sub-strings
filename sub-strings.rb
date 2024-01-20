def substrings(word, dictionary)
    # set the word
    word.downcase!
  
    # Initialize result hash
    result = Hash.new(0)
  
    # Iterate over dictionary
    dictionary.each do |substring|
      # Prepare substring
      substring.downcase!
  
      # Count occurrences by using .scan 
      occurrences = word.scan(substring).length
  
      #Update result hash
      result[substring] += occurrences if occurrences.positive?
    end
  
    #Return result
    return result
  end

