class Charity < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :supports
  has_many :users, through: :supports, source: :user # source --> sinon active record ne comprend pas la commande charity1.users
  has_many_attached :photos
  validates :name, :description, :address, :category, presence: true

  SEEDED_AMOUNT = 6_227_921
  Euros_per_search = 1_246.6 # c'est nawak mais mieux pour seeder les montants des assoces

  def money_charity
    total_generated_user = []
    self.users.each do |user|
      total_generated_user << user.searches.count * Euros_per_search
    end
    (total_generated_user.sum + (SEEDED_AMOUNT / Charity.all.count)).round
  end
end
