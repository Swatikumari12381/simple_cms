class DisplayController < ApplicationController
  skip_before_action :authenticate_admin_user!
  layout "public"
  def show
    @pages=Page.find(params[:id])
    
  end
end
