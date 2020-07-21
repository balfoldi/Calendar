class Event

	attr_accessor :title

	attr_accessor :attendees

	attr_accessor :start_date

	attr_accessor :duration

	def initialize ( save_start_date = Time.new.strftime("%H:%M:%S %d/%m/%Y"), save_duration = 60, save_title = "My event.", save_attendees = nil)
		@duration = save_duration.to_i * 60
		@attendees = save_attendees
		@title = save_title.to_s.capitalize
		@start_date = Time.parse(save_start_date)
	end

	#def check_date(date)
	#	return date.nil?
	#end


	def input(wich_one)
		case wich_one
		when "attendees"
			return @attendees	
		when "start"
			return @start_date
		when "duration"
			return duration / 60
		when "title"
			return @title
		else
			return "ERROR : wrong '.input' name, try : start, duration, title, attendees"
		end
	end

	def get(wich_one)
		case wich_one
		when "postpone_24"
			return @start_date = @start_date + 24*60*60
		when "end"
			return @start_date + @duration
		when "is_passed?"
			return @start_date > Time.now
		when "is_future?"
			return @start_date < Time.now
		when "is_soon"
			return Time.now + 30*60 > @start_date && Time.now < @start_date
		else
			return "ERROR : wrong '.get' name, try : postpone_24, end, is_passed, is_future, is_soon"
		end
	end

	def to_s
		puts " >Tire : #{@title}"
		puts ">Date de début : #{@start_date}"
		puts ">Durée : #{@duration / 60} minutes"
		puts ">Invités : #{@attendees}"
	end
end