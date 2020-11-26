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
    redirect_to user_path(current_user)
  end

  def destroy
    # via les boutons de "stop support l'assoce"
    @support = Support.find(params[:id])
    authorize @support
    @support.destroy
    redirect_to user_path(current_user)
  end


end
