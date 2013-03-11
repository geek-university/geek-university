class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end


  before_filter :set_locale

  def set_locale
    #logger.debug current_user
    I18n.locale = params[:locale] || I18n.default_locale
  end

  protect_from_forgery
end
