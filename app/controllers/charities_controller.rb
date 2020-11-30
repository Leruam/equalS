class CharitiesController < ApplicationController
  def show
    # on aura ici notamment l'index de articles
    skip_authorization
    @charity = Charity.find(params[:id])
  end
end
