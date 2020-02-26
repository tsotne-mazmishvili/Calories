class FoodMealsController < ApplicationController
  def create
    current_meal = Meal.last_meal
    FoodMeal.create(food_id: params[:food_id], meal_id: current_meal.id)
    redirect_to food_meals_path
  end

  def index
    @daily_meal = FoodMeal.all
  end

  def destroy
    foodmeal = FoodMeal.find(params[:id])
    foodmeal.delete
    flash[:notice] = "succesfully removed"
    redirect_to food_meals_path
  end
end