class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :personal, :social

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    @user.update_attributes user_params
    render_wizard @user
  end

  private

  # def redirect_to_finish_wizard
  #   redirect_to root_path , notice: "Thank you for signing up."
  # end

  def finish_wizard_path
    user_show_path
  end

  def user_params
    params.require(:user).permit(:name, :address, :birthday, :youtube, :skype, :facebook)
  end
end
