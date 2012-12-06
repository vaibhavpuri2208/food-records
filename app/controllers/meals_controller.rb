class MealsController < ApplicationController


	def index
		@meals = Meal.all
			respond_to do |format|
      	format.html 
      	format.json { render json: @meals }
    end

	end

	def new
		@meal = Meal.new
		@showmeals = Meal.all	

		respond_to do |format|
	      	format.html 
	      	format.json { render json: @meal }
	      	format.js
    	end	
	end


	def create
		date_value = Date.parse(format_date(params[:meal][:mealdate]))
		@meal = Meal.new
		@meal.foodname= params[:meal][:foodname]
		@meal.category_id= params[:meal][:category_id]
		@meal.mealdate= date_value
		@meal.save

		respond_to do |format|
      		format.html 
      		format.json { render json: @meal }
      		format.js
    	end	
	end

	def destroy
		@meal = Meal.find_by_id(params[:id])
		@meal.destroy
		respond_to do |format|
     	 format.html { redirect_to new_meal_url }
       end
	end

	def format_date(orginal_date)
		@formatted_date=""
		@formatted_date << orginal_date[6,4] + "/"
		@formatted_date << orginal_date[0,2] + "/"
		@formatted_date << orginal_date[3,2] 
		@formatted_date
	end

end
