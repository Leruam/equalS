class HomesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    skip_authorization # pour ne pas bloquer via pundit
  end
end
