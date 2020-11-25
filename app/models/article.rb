class Article < ApplicationRecord
  belongs_to :charity
  has_one_attached :photo
  validates :title, :url, :date, :content, presence: true
  validates :url, uniqueness: true
end
