class Article < ApplicationRecord
  belongs_to :charity
  has_one :charity
  has_one_attached :photo
  validates :title, :url, presence: true
  validates :url, uniqueness: true
end
