class IngredientsController < ApplicationController
  def index
    @ingredients = []
    Ingredient.all.each do |ingredient|
      if ingredient.user.profile.role
        @ingredients.append(ingredient)
        next
      end
      next unless user_signed_in?

      @ingredients.append(ingredient) unless ingredient.user != current_user
    end
    @ingredients
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

  def destroy
    Ingredient.find_by(id: params[:id]).destroy
    redirect_to '/ingredients'
  end

  private

  def ingredient_params
    input_params = params.require(:ingredient).permit(:name, :image)
    input_params.merge({ 'user_id' => current_user.id })
  end
end
