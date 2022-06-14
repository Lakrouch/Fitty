# frozen_string_literal: true


class DishesController < ApplicationController
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
    @dish = Dish.find(params[:id])
    @ingredients = Ingredient.find_by(id: @dish.ingredients)
  end

  def new
    @dish = Dish.new
    @ingredients = Ingredient.all
  end

  def create
    @dish = Dish.new(dish_params)

    binding.pry
    if @dish.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    Dish.find_by(id: params[:id]).destroy
    redirect_to root_url
  end

  private

  def dish_params
    input_params = params.require(:dish).permit(:name, :cal, :ingredients, :recipe, :image)
    input_params.merge({ 'user_id' => current_user.id })
  end
end
