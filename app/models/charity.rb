class Charity < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :supports
  has_many :users, through: :supports
  has_one_attached :photo
  validates :name, :description, :address, :category, presence: true
end
