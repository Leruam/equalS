class Charity < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :supports
  has_many :users, through: :supports, source: :user # source --> sinon active record ne comprend pas la commande charity1.users
  has_many_attached :photos
  validates :name, :description, :address, :category, presence: true
end
