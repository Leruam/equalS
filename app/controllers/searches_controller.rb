class SearchesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :create --> mieux d'utiliser simple_form qui gere le token ou de mettre un authenticity_token dans le form

  def create
    new_search = Search.create(content: params[:q], user: current_user)
    authorize new_search # pundit
    redirect_to search_path(q: params[:search][:q]) # il faut mettre une cle / valeur dans le path ou un objet
  end
end
