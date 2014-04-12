class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(resource)
    create_profile_path
  end

  def after_inactive_sign_up_path_for(resource)
     create_profile_path
   end
end
