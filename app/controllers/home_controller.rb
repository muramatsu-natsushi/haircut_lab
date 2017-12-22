class HomeController < ApplicationController

  def index
  @admin_user = User.includes(:articles).find_by(is_admin: true)

  end

  def show
  end

end
