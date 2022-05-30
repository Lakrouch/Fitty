class DishesController < ApplicationController
  def index
    @dishes = []
    Dish.all.each do |dish|
      unless !Profile.find_by_users_id(dish.author_id).role
        @dishes.append(dish)
        next
      end
      unless !user_signed_in?
        unless dish.author_id != current_user.id
          @dishes.append(dish)
        end
      end
    end
    @dishes
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)

    if @dish.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def dish_params
    input_params = params.require(:dish).permit(:name, :cal, :ingridients, :recipe, :image)
    input_params.merge({"author_id" => current_user.id})
  end
end
