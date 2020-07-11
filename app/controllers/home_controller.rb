class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => :dashboard
  before_action :users_info

  def index
    @uploads = current_user.uploads
    @upload = Upload.new
  end

  def dashboard
  end

  private

  def users_info
    @users = User.all
    @users_count = @users.count
  end
end
