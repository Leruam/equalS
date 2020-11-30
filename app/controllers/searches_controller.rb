class SearchesController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def create
    new_search = Search.create(content: params[:search][:q], user: current_user)
    authorize new_search # pundit
    redirect_to search_path(q: params[:search][:q])
    # il faut mettre une cle / valeur dans le path ou un objet
    # params[:search] --> simple form range tout ce que renvoie le form dans une key correspondant au nom du model
  end
end
