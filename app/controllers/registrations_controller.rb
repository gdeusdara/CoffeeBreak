class RegistrationsController < Devise::RegistrationsController
  private
  def sign_up_params
    params.require(:usuario).permit(:email, :nome, :password, :password_confirmation, :desenvolvedor, :username, :avatar)
  end

  def account_update_params
    params.require(:usuario).permit(:email, :nome, :password, :password_confirmation, :current_password, :desenvolvedor, :username, :avatar)
  end
end
