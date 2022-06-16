# frozen_string_literal: true

class DiariesController < ApplicationController
  def index
    @notes = current_user.diary.notes
  end
end
