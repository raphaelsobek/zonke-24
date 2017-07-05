class ApplicationController < ActionController::Base
   protect_from_forgery with: :exception
   before_action :configure_permitted_parameters, if: :devise_controller?
   protected
  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_in, keys: [:name])

    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:about])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:birthday])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:mobile])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:streetAddress])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:townCity])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:state])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:country])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:workLocation])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:phoneType])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:car])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:gender])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:language])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:ethinic])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])

   devise_parameter_sanitizer.permit(:account_update ,keys: [:name])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:first_name])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:last_name])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:about])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:birthday])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:mobile])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:houtlyRate])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:streetAddress])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:townCity])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:state])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:country])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:workLocation])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:phoneType])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:car])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:gender])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:language])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:ethinic])
   devise_parameter_sanitizer.permit(:account_update ,keys: [:avatar])


 # devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email :about, :birthday,:mobile,:houtlyRate,:streetAddress,:townCity,:state,:country,:workLocation,:phoneType,:car, :gender,:language,:ethinic ,:avatar])
 #    devise_parameter_sanitizer.permit(:account_update, keys:[:first_name, :last_name, :email :about, :birthday,:mobile,:streetAddress,:townCity,:state,:country,:workLocation,:phoneType,:car, :gender,:language,:ethinic ,:avatar])
  end 
end

 