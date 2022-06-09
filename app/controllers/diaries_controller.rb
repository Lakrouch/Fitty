#TODO:  time  replace
class DiariesController < ApplicationController

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)

    if @diary.save
      redirect_to "/users/#{current_user.id.to_s}"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def diary_params
    time = Time.new
    values = time.to_a
    current_time = Time.utc(*values)
    params.permit(:dish_id).merge({ 'user_id' => current_user.id, 'time' => current_time })
  end
end
