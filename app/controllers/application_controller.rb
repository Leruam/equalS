class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end
  # liens cours le wagon: https://kitt.lewagon.com/camps/500/lectures/05-Rails%2F07-Airbnb-Facebook-connect#source

  def global_search
    # on calcule le total des search (le Seed_search correspond a SEEDED_AMOUNT / 0,005)
    seed_search = 1_245_584_200
    Search.count + seed_search
  end

  def global_search_today
    # on calcule le total des search aujourd'hui
    Search.where(created_at: Date.today.beginning_of_day..Date.today.end_of_day).count + 8326
  end

  def global_money
    # on calcule le total via les charities
    total_money = []
    Charity.all.each do |charity|
      total_money << charity.money_charity
    end
    total_money.sum.round
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)|(^results$)/
    # rajout ici du controler result (avec |(^results$) --> regex) qu'on veut laisser autorise pour tous
    # devise_controller? --> check si on est dans le controller de devise (true or false)
    # params[:controller] --> renvoie le controller dans lequel on est sur la page actuelle
  end
end
