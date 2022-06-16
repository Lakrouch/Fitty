# frozen_string_literal: true

class RegistrationController < Devise::RegistrationsController


  /#def create
    super
    Profile.create({ name: current_user.email, role: 0, user_id: current_user.id })
    Diary.create({ user_id: current_user.id })
  end#/
end
