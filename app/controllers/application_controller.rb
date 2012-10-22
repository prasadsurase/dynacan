class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = "Access denied. You are not authorized to access the requested page."
    redirect_to home_path and return
  end

  protected

  def self.permission
    return name = self.name.gsub('Controller','').singularize.split('::').last.constantize.name rescue nil
  end

  def current_ability
    @current_ability ||= Ability.new(current_user || current_admin_user)
  end

end
