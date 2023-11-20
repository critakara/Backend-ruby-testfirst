#write your code here

def echo(word)
  return word
end

def shout(word)
  return word.upcase
end

def repeat(word, times = 2)
  repeated = word + " " + word
  if times > 2
    (3..times).each do |i|
      repeated = repeated + " " + word
    end
  else
  end
  repeated
end

def start_of_word(word, times = 2)
  word[0..times-1]
  # if letters > 1
  #   return word[0, letters]
  # else
  #   return word[0]
  # end
end

def first_word(phrase)
  phrase.split[0]
end

def titleize(title)
  # seems this needs some extra work
  # always caps word[0]
  # never capitalize 'little words'
  # capitalize everything else
  # split title
  # caps 0
  # for each
  # case for 'little words'
  # otherwise it gets capsed
  # wait is this doing all prepositions
  # nightmare you'd need a whole ass dictionary for that???
  # ok just need to combine it back up
  result = ""
  littleWords = ["a", "an", "and", "but", "for", "or", "nor", "on", "over",
                 "at", "from", "by", "to", "the"]
  words = title.split()
  result = words[0].capitalize
  
  words.drop(1).each do |i|
    if littleWords.include?(i)
    # combine it
      result = result + " " + i
    else
      result = result + " " + i.capitalize
    end
  end
    return result
end























































