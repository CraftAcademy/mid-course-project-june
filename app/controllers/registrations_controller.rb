class RegistrationsController < Devise::RegistrationsController

  def create
    sign_up_params.merge({type: 'orphanage'})
    super
  end

  protected

  def after_sign_up_path_for(resource)
    new_orphanage_path
  end

  def sign_up_params
    params.require(:user).permit(:type, :email, :password, :password_confirmation)
  end
end