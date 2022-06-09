class RegistrationController < Devise::RegistrationsController
  def new
    super
  end

  def create
	  super
	  Profile.create({ name: current_user.email, role: 0, user_id: current_user.id})
  end

  def update
	  super
  end


end
