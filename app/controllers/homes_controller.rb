class HomesController < ApplicationController

  def show
    skip_authorization # pour ne pas bloquer via pundit
  end
end
