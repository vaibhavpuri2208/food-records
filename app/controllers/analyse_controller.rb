class AnalyseController < ApplicationController

	def calculate
		@meals = Meal.in_the_last_seven_days
		@vegmeals = vegmeals.count

	


	end

	def vegmeals
	vegmeals = []
	@meals.each do |m|	
		if m.category.name == 'Veg'
			vegmeals.push(m)
		end
	end
	vegmeals	
	end


end
