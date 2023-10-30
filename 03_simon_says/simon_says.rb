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
  for i in 3..times
    repeated = repeated + " " + word
  end
  else
  end
  return repeated
end

def start_of_word(word, letters)
  if letters > 1
    return word[0, letters]
  else
    return word[0]
  end
end

def first_word(phrase)
  word = phrase.split()
  return word[0]
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
  titled = ""
  littleWords = ["a", "an", "and", "but", "for", "or", "nor", "on", "over",
                 "at", "from", "by", "to", "the"]
  words = title.split()
  titled = words[0].capitalize
  
  words.drop(1).each do |i|
    if littleWords.include?(i)
    # combine it
      titled = titled + " " + i
    else
      titled = titled + " " + i.capitalize
    end
  end
    return titled
end


























































