require 'time'
require 'date'

puts now = Time.now

puts event = Time.parse("10:15:00")

print "is in 30 minutes? "

puts "is #{now.strftime("%H:%M")} plus #{30} minutes is greater than #{event.strftime("%H:%M")}?"

puts now + 30*60 > event && now < event




