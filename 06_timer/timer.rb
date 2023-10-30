# ok so i guess the idea is im just returning a string as "00:00:00" form? no other implementation?
# do the math on the numbers, combine the spit back out a string
# how can you do a tick over?
# ok a/b and then add a % b as the remainder?
# a/b no decimals, a % b


class Timer
  #write your code here
  attr_accessor :seconds, :minutes, :hours, :time_string

  def initialize
    
    @seconds = 0
    @time_string = "00:00:00"
    
  end
  
  def time_string
    # how do i add padding 0's
    # i guess the best bet is to check if its >10? then add the 0padding in the conversion to the string
    # if x/3600 > 0 go to hours
    # elsif x/60 > 0
    # else it goes to the seconds?
    # maybe don't need an if? i think you could just do all of them and trunicate to 0 if its 0?
    secsString = ""
    minutesString = ""
    hoursString = ""
    hours = 0
    minutes = 0
    
    
    seconds = @seconds % 60
    minutes = (@seconds/60) % 60
    hours = @seconds/3600

    
    
    
    
    

    if seconds < 10
      secsString = seconds.to_s
      secsString.prepend("0")
    else
      secsString = seconds.to_s
    end
    if minutes < 10
      minutesString = minutes.to_s
      minutesString.prepend("0")
    else
      minutesString = minutes.to_s
    end
    if hours < 10
      hoursString = hours.to_s
      hoursString.prepend("0")
    else
      hoursString = hours.to_s
    end

    timeString = hoursString + ":" + minutesString + ":" + secsString

    @time_string = timeString
   
  
  
    
#    yield @time_string
  end
end
