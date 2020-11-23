class Support < ApplicationRecord
  belongs_to :user
  belongs_to :charity
  has_many :users
  has_many :charities
end
