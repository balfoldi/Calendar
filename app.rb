require_relative 'lib/user.rb'
require_relative 'lib/event.rb'

require 'pry'
require 'time'

puts "Yo man, comment ca roule???"

gets.chomp

puts "Wow trops cool!"

sleep(1)





def create_user
	puts "I'm happy to welcome you in youre new calendar!"
	puts "What's youre email sweet harth?"
	email_input = gets.chomp
	puts "Cool email bro, what's youre age?"
	age_input = gets.chomp
	User.new(email_input,age_input)
	puts "Allright so youre email is '#{email_input}' and your age is '#{age_input}' all good man!"
	sleep(1)
	return email_input
end

def create_event(user)
	puts "Allright, what's your event name boy?"
	title_input = gets.chomp
	puts "Wow and when are you gonna do that? The format is \"hh:mm:ss dd/mm/yyyy\"."
	puts "it's not negociable, i\'m machine, remember?"
	date_input = gets.chomp 
	puts "It's so far, boring... and how long will it last? in minutes please!"
	durr_input = gets.chomp
	puts "And it's so short, make it longer!"
	puts "Who's email should i invite?"
	att_input = (gets.chomp + user).slit
	Event.new(date_input, durr_input, title_input, att_input)
	puts "All right all good, event created sir!"
	Event.new(date_input, durr_input, title_input, att_input)
	sleep(1)
end

def welcome
	puts "Que veux tu faire aujourd'hui?\n1.M'inscrire\n2.Me connecter\nPress <ENTER> to exit"
	input = gets.chomp
	case input
	when "1"
		user = create_user 
	when "2"
		puts "All right, tell me your email."
		user = gets.chomp
		abort("Sorry, wrong anwser boy.") unless User.user_email_exist?
	else
		abort("Why? :(")
	end

	loop do
		puts "welcome #{user} do you wanna create an event? [y/n]"
		case input = gets.chomp
		when "y" || "Y"
			create_event(user)
		else
			abort("Sad :/")
		end
	end
end

welcome