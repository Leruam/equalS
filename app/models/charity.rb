class Charity < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :supports
  has_many :users, through: :supports, source: :user # source --> sinon active record ne comprend pas la commande charity1.users
  has_many_attached :photos
  validates :name, :description, :address, :category, presence: true

  EUROS_PER_SEARCH = 1246.6 # c'est nawak mais mieux pour seeder les montants des assoces
  SEEDED_AMOUNT = 11239598

  def money_charity(charity_id)
    total_generated_user = []
    SEEDED_AMOUNT / Charity.all.count

    Charity.find(charity_id).users.each do |user|
      total_generated_user << user.searches.count * EUROS_PER_SEARCH
    end
  end

end
