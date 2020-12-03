class CharitiesController < ApplicationController
  def show
    # on aura ici notamment l'index de articles
    skip_authorization
    @charity = Charity.find(params[:id])
    @articles = Article.where(charity_id: @charity.id)
    @support = @charity.supports.find_by(user_id: current_user.id)
    # .where  => [record] or [ ]
    # .find_by => record or error, finds the first match (in 99% of cases used when there's only 1 match)
  end
end
