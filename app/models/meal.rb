class Meal < ActiveRecord::Base
  attr_accessible :foodname, :foodtype, :mealdate, :category_id

  belongs_to :category

	def self.in_the_last_seven_days
		last_seven_day_meals = []
		Meal.all.each do |m|
			if (Date.today - m.mealdate).to_i < 7
				last_seven_day_meals << m
			end	
		end
	last_seven_day_meals

	end





end
