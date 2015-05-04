module ApplicationHelper
	def display_time
		time = Time.new
		values = time.to_a
		time.strftime("%x, %X")
	end
end
