class HomesController < ApplicationController
  def show
    skip_authorization # pour ne pas bloquer via pundit

    # form avec un query q - appel API Bing de recherche
    # pour plus tard voir si filtre ou autres options pour API dans url d'appel?
  end
end
