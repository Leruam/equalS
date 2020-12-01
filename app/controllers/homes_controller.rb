class HomesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    skip_authorization # pour ne pas bloquer via pundit
    @global_search_count = Search.count + 6_227_921
    @global_money_count = @global_search_count * 0.05
  end
end
