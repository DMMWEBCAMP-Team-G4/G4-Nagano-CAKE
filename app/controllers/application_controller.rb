class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    if member_signed_in?
      root_path(resource)
    else
      admin_orders_path
    end
  end

  # def after_sign_out_path_for(resource)
  #   if member_signed_out

  #   # ログアウト後に遷移するpathを設定
  #   end
  # end


  def configure_permitted_parameters


    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :first_name_kana, :last_name_kana, :postal_code, :address, :phone_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :address, :phone_number, :email, :member_status])

  end


end
