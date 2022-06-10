# frozen_string_literal: true

class ProfilesController < ApplicationController
  def edit
    @profile = Profile.find_by_users_id(current_user.id)
  end

  def update
    @profile = Profile.find_by_users_id(current_user.id)
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
end
