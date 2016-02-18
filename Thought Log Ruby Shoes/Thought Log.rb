require 'green_shoes'

name = ask "Enter your name:"
if name == "Gian"
  alert "Welcome back Inventor Gian. You thoughts will be safe with me."
else
  alert "Hello, " + name + "!"
end

situation = ask "Please enter your situation:"
thoughts = ask "Please enter your thoughts:"
emotions = ask "Please enter your emotions:"
behavior = ask "Please enter your behavior:"
#alert = "field1" + situation + thoughts + emotions + behavior

thinking_traps = "Please identify your thinking traps: \n \n " +
  "MIND-READING: This happens when we believe that we know what others are thinking. " +
  "However, we cannot predict the future because we don\'t have a magic ball! \n \n" +
    
  "LABELING: Sometimes we talk to ourselves in a mean way and we use a single " + 
  "negative word to describe ourselves. However, this kind of thinking is unfair " + 
  "and we\'re too complex to be summed up in a single word! \n \n" + 
  
  "FILTERING: This happens when we take note of all the bad things that " +
  "happen, but ignore any good things. \n \n" + 
    
  "OVERESTIMATING: This happens when we believe that something that\'s unlikely " +
  "to occur is actually about to happen. \n \n" + 
  
  "CATASTROPHIZING: This is when we imagine the worst possible thing is about to happen" +
  "and we will be unable to cope with it. \n \n" +
  
  "OVERGENERALIZING: This is when we use words like always or never to describe situations" +
  "or events. This is a problematic way of thinking because it doesn\'t take all situations" +
  "or events into account. \n \n"
alert thinking_traps

alt_thoughts = ask "Please enter an alternate thought:"
alt_behavior = ask "Please enter an alternate behavior:"

time = Time.now
time_string = time.inspect.to_s

alert time_string

open('Ruby Thought Log.txt', 'a') do |f|
  f.puts(time_string + "\n" + name + "\n" +
    "Situation: " + situation + "\n" +
    "Thoughts: " + thoughts + "\n" +
    "Emotions: " + emotions + "\n" +
    "Behavior: " + behavior + "\n" +
    "Alt_thoughts: " + alt_thoughts + "\n" +
    "Alt_behavior: " + alt_behavior + "\n" + "\n")
end

filename = ('Ruby Thought Log.txt')
Shoes.app do
  para File.read(filename)
end