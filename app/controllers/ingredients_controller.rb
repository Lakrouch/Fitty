class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      redirect_to '/ingredients'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def ingredient_params
    input_params = params.require(:ingredient).permit(:name, :image)
    input_params.merge({ 'author_id' => current_user.id })
  end
end
