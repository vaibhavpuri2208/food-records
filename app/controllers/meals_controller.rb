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
		@meal = Meal.new(params[:meal])
		@meal.save

		respond_to do |format|
      		format.html 
      		format.json { render json: @meal }
      		format.js
    	end	
	end



end
