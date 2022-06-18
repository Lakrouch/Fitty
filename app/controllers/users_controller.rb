# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :find_user, only: %i[destroy change_role]

  def index
    @users = User.all
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def change_role
    @user.profile.role = (@user.profile.role ? 0 : 1)
    @user.profile.save
    redirect_to users_path
  end

  private

  def find_user
    @user = User.find_by(id: params[:id])
  end
end
