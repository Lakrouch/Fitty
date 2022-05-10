class DishesController < ApplicationController
  def main_page
    @dishes = Dish.all
  end

  def login
  end

  def registration
  end

  def show
    @dish = Dish.find(params[:id])
  end
end
