# frozen_string_literal: true

class UsersController < ApplicationController

  before_action :get_user, only: %i[destroy change_role]

  def index
    @users = User.all
  end

  def show
    @diaries = []
    @diaries.append(Diary.find_by_user_id(current_user.id))
    @diaries
  end

  def destroy
    @user.destroy
    redirect_to '/users'
  end

  def change_role
    @user.profile.role = (@user.profile.role ? 0 : 1)
    @user.profile.save
    redirect_to '/users'
  end

  private

  def get_user
    @user = User.find_by(id: params[:id])
  end
end
