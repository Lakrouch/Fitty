# frozen_string_literal: true

class NotesController < ApplicationController

  def index
    @notes = current_user.diary.notes
  end

  def new
    @note = Note.new
    @dishes = Dish.all
  end

  def create
    @note = Note.new(note_params)

    if @note.save
      redirect_to notes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def note_params
    params.require(:note).permit(:dish_id).merge( diary_id: current_user.diary.id,
                                                   time: Time.utc(*Time.new.to_a).strftime('%Y-%m-%d %H:%M:%S'))
  end
end
