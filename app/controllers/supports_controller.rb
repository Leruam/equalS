class SupportsController < ApplicationController

  # mettre authorize (pundit) pour que seul le current_user puisse create et destroy ses supports
  # et MAJ policy de Support

  def create
    # via les boutons de "support l'assoce"
    @support = Support.new
    @support.charity = Charity.find(params[:charity_id])
    @support.user = current_user
    authorize @support
    @support.save

    @user_total_search_count = Search.where(user: current_user).count + 1556
    @user_today_search_count = Search.where(user: current_user, created_at: Date.today.beginning_of_day..Date.today.end_of_day).count + 8
    @user_charity_count = Charity.where(id: current_user.charities.ids).count
    respond_to do |format|
      format.js #{ render 'create.js.erb' }
      format.html { redirect_to charity_path(@support.charity) }
    end
  end

  def destroy
    # via les boutons de "stop support l'assoce"
    @support = Support.find(params[:id])
    authorize @support
    @support.destroy

    @user_total_search_count = Search.where(user: current_user).count + 1556
    @user_today_search_count = Search.where(user: current_user, created_at: Date.today.beginning_of_day..Date.today.end_of_day).count + 8
    @user_charity_count = Charity.where(id: current_user.charities.ids).count
    if request.referer.include? "users"
      redirect_to user_path(current_user)
    else
      redirect_to charity_path(@support.charity)
    end
  end


end



