class NotesController < ApplicationController

  def new
    @note = Note.new
    @dishes = Dish.all
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      redirect_to "/diaries"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def note_params
    params.require(:note).permit(:dish_id).merge({ user_id: current_user.id,
                                                   diary_id: current_user.diary.id,
                                                   time: Time.utc(*Time.new.to_a).strftime('%Y-%m-%d %H:%M:%S') })
  end
end
