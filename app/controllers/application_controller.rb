class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end


  before_filter :set_locale

  def set_locale
    #logger.debug current_user
    I18n.locale = params[:locale] || I18n.default_locale
  end


  def after_sign_in_path_for(resource)
    request.params[:return_url] || root_url
  end


  protect_from_forgery
end
