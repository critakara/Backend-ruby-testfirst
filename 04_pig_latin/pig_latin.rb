#write your code here

# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.


# ok 'vowel sound' is technically vague but i dont really wanna figure out those edge cases
# so i'll collapse it into "vowels"
# the other big req is first letter to the end
# ok it seems like the spec is counting things like qu and sch as things
# i'd guess one of the ways is add a few specific cases to match
# qu, etc
# theres a set of vowels and a set of "phenomes"
# vowels are one small list
# phonems aer a much larger but still encompassing list?
# known based on the spes: [letter]qu, qu, sch
# theres only at max 44 so this is really a fine use for just writing them all out
# actual language processing seems out of scope not to mention my skill level


def translate(phrase)
  # check vowels list
  # check phonemes list
  # else just stick the first letter in the back with ay
  # ok phonemes -> vowels -> other
  # string split
  # for each or whatever to go through
  # recombine each time into the final one
  phonemes = ["thr", "qu", "sch", "ch", "squ", "th", "br"] # list of multiletter phonemes
  vowels = ["a", "e", "i", "o", "u"] # list of vowels
  words = phrase.split() # split into an array of words
  pigword = ""
  pigphrase = []

   for x in words
    if phonemes.any? { |str| x.include?(str) }
    # do the thing
      for i in phonemes
        if x[0..2] == "sch" or x[0..2] == "squ" or x[0..2] == "thr"
          pigphrase.push(pigword << x[3..-1] << x[0..2] << "ay")
          break
        elsif x.include?(i)
          # 0 to i.length
          # move to x.length
          # + ay
          # x.chars.slice[0..i.length].to_a.reverse.join << "ay"
          pigphrase.push(pigword << x[i.length..-1] << x[0..i.length-1] << "ay")
        #  pigphrase << x << "ay"
          pigword = ""
          
        else
         
        end
      end
    elsif vowels.any? x[0]
    # do the other thing
      pigphrase.push(pigword << x << "ay")
      pigword = ""
      
    else
      # this is always 1
      # x[0] move to x.length add ay
      # remove the nth letter
      pigphrase.push(pigword << x[1..-1] << x[0] << "ay")
      pigword = ""
    end
   end
    # return words.join(" ")
      return pigphrase.join(" ")
end

# this is all incredibly cursed next time im just learning regex instead
