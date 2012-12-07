class AnalyseController < ApplicationController

	def calculate
		@chartarray =	[{
	                        name: 'Veg Meals',
	                        y: vegmeals,
	                        sliced: true,
	                        selected: true
                    	}, 
                    	{
							name: 'Non-Veg Meals',
                        	y: nonvegmeals
                    	}]

	
	end

	private
	
	def vegmeals
    Meal.in_the_last_seven_days.each do |m|	
			m.category.name == 'Veg'
		end
	end



  def vegmeals
    vegmeals = []
    Meal.in_the_last_seven_days.each do |m|  
      if m.category.name == 'Veg'
        vegmeals.push(m)
      end
    end
  vegmeals.count  
  end

def nonvegmeals
    nonvegmeals = []
    Meal.in_the_last_seven_days.each do |m|  
      if m.category.name == 'Non-Veg'
        nonvegmeals.push(m)
      end
    end
  nonvegmeals.count  
  end



end
