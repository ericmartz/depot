module ApplicationHelper
	def display_time
		time = Time.new
		values = time.to_a
		time.strftime("%x, %X")
	end

	def hidden_div_if(condition, attributes = {}, &block)
		if condition
			attributes["style"] = "display: none"
		end

		content_tag("div", attributes, &block)
	end

end
