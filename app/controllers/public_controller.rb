class PublicController < ApplicationController
  skip_before_action :authenticate_admin_user!
  layout "public"
  def index
    @subjects= Subject.all
    @subjects= Subject.order(:position)
  end
end
