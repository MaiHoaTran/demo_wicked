module Users
  class SessionsController < Devise::SessionsController
    before_action :configure_sign_in_params, only: %i(create)

    private

    def configure_sign_in_params
      devise_parameter_sanitizer.permit(:sign_in, keys: %i(email password))
    end

    def after_sign_in_path_for resource
      user_show_path
    end

    def after_sign_out_path_for _resource_or_scope
      root_path
    end
  end
end
