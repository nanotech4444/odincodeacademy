require 'date'

class PersonalChef
  def make_toast
    puts "Making your toast!"
    return self
  end
  def make_milkshake
  	puts "Making your milkshake!"
  	return self
  end
  def make_toast(color)
  	if color.nil?
    	puts "How am I supposed to make nothingness toast?"
  	else
  		puts "Making your toast #{color}"
  	end
  	return self
  end
  def make_eggs
  	puts "Making eggs"
  	return self
  end
  def gameplan(meals)
  	meals.each do |meal|
    	puts "We'll have #{meal}..."
  	end
  	all_meals = meals.join(", ")
  	puts "In summary: #{all_meals}"
	end
end

class Butler
	def open_front_door
		puts "Opening the door"
	end
	def tell_me_the_day
		today = Date.today.strftime("%A")
		day_of_year = Date.today.yday
		puts "Happy " + today + " Sir! The "+day_of_year.to_s+" day of the year"
	end
	def whats_on_shelf
		produce = {"apples" => 3, "oranges" => 8, "carrots" => 12}
		puts "There are #{produce['oranges']} oranges in the fridge. " \
			"And #{produce['apples']} apples, #{produce['carrots']} carrots "\
			"on the table."
		puts produce.keys
		puts produce.values
		produce["grapes"]=200
		produce["oranges"]=100
		puts produce
	end
	def inventory
  		produce = {apples: 3, oranges: 1, carrots: 12}
  		produce.each do |item, quantity|
    	puts "There are #{quantity} #{item} in the fridge."
  	end
end
end