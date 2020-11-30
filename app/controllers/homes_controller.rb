class HomesController < ApplicationController

  def show
    skip_authorization # pour ne pas bloquer via pundit
    @global_search_count = Search.count + 6_227_921
    @global_money_count = @global_search_count * 0.05
  end
end
