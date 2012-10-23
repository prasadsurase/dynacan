class HomeController < ApplicationController

  before_filter :authenticate_user!
  before_filter :load_permissions

  def index
  end

end
