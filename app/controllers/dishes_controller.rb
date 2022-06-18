# frozen_string_literal: true

class DishesController < ApplicationController
  before_action :find_dish, only: %i[show destroy change_role]

  def index
    @dishes = []
    Dish.all.each do |dish|
      if dish.user.profile.role
        @dishes.append(dish)
        next
      end
      next unless user_signed_in?

      @dishes.concat(current_user.dishes)
      @dishes = @dishes.uniq
    end
    @dishes
  end

  def show
    @ingredients = @dish.ingredients
  end

  def new
    @dish = Dish.new
    @ingredients = Ingredient.all
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      ingredients = params.require(:ingredients)
      ingredients.each do |ingredient|
        @ingredient_of_dish = DishIngredient.create({ dish_id: @dish.id, ingredient_id: ingredient.to_i })
        @ingredient_of_dish.save
      end
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @dish.destroy
    redirect_to root_url
  end

  private

  def dish_params
    input_params = params.require(:dish).permit(:name, :cal, :recipe, :image)
    input_params.merge({ user_id: current_user.id })
  end

  def find_dish
    @dish = Dish.find_by(id: params[:id])
  end
end
