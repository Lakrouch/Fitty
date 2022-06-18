# frozen_string_literal: true

class ProfilesController < ApplicationController

  before_action :find_current_user, only: %i[edit update]

  def update

    if @profile.update(profile_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name)
  end

  def find_current_user
    @profile = Profile.find_by(user_id: current_user.id)
  end
end
