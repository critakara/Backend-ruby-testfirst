# ok so i need a list of 'small words' that won't be capitalized
# i think this can just be local to the book class as it is

class Book
  # write your code here
  attr_accessor :title
  
  # when doing title case, always do the first word then do the checks
  def title=(title)
    littleWords = ["to", "and", "the", "in", "a", "of", "an"]
    # ok so i need to split the title, do the first one, check through the small words
    @title = title

    titled = ""

    words = @title.split()
    titled = words[0].capitalize
  
    words.drop(1).each do |i|
      if littleWords.include?(i)
    # combine it
        titled = titled + " " + i
      else
        titled = titled + " " + i.capitalize
      end
    end

    @title = titled
  end
end



