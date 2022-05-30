class UsersController < ApplicationController
  def list
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @profile = if !Profile.find_by_users_id(@user.id).nil?
                 Profile.find_by_users_id(@user.id)
               else
                 Profile.create({ "name" => '..', "users_id" => current_user.id })
               end
    @diaries = []
    @diaries.append(Diary.find_by_user_id(current_user.id))
    @diaries
  end
end
