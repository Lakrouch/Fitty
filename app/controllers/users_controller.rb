# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @diaries = []
    @diaries.append(Diary.find_by_user_id(current_user.id))
    @diaries
  end

  def destroy
    User.find_by(id: params[:id]).destroy
    flash[:success] = 'User was deleted'
    redirect_to '/users'
  end

  def change_role
    @user = User.find_by(id: params[:id])
    @user.profile.role = (@user.profile.role ? 0 : 1)
    @user.profile.save
    redirect_to '/users'
  end
end
