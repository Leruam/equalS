class ResultsController < ApplicationController
  def index
    skip_authorization # pour ne pas bloquer via pundit
    # recup le json de l'API de recherche et l'afficher
  end
end
