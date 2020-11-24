class Project < ApplicationRecord
  belongs_to :charity
  has_one_attached :photo
  validates :title, :content, :date, presence: true
end
