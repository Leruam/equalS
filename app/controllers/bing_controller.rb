class BingController < ApplicationController
  skip_before_action :authenticate_user!, only: :get_api_key

  def get_api_key
    skip_authorization
    render json: { api_key: ENV["BING_ACCESS_KEY"] }
    # renvoie un json a partir d'un fichier ruby
  end
end
