class StaticPagesController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    redirect_to memories_path if user_signed_in?
  end

end
