class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    @other_charities = Charity.where.not(id: @user.charities.ids)
    @user_total_search_count = Search.where(user: @user).count + 1556
    @user_today_search_count = Search.where(user: @user, created_at: Date.today.beginning_of_day..Date.today.end_of_day).count + 8
    @user_charity_count = Charity.where(id: @user.charities.ids).count
    @global_charity_count = Charity.count
    @global_search_count = global_search
    @global_search_count_today = global_search_today
  end
end

