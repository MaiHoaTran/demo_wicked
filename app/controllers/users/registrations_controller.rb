module Users
  class RegistrationsController < Devise::RegistrationsController
    private

    def after_sign_up_path_for _resource
      user_steps_path
    end
  end
end
