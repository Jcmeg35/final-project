class RegistrationsController < Devise::RegistrationsController
    skip_before_filter :require_no_authentication, :only => [ :new, :create, :cancel ]
  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :title, :email, 
                                  :title, :company, :market_position, 
                                  :country, :city, :state, :postal_code,
                                  :phone, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :title, :email, 
                                  :title, :company, :market_position, 
                                  :country, :city, :state, :postal_code,
                                  :phone, :password, :password_confirmation)
  end
end