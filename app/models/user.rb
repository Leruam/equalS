class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :searches
  has_many :supports, dependent: :destroy
  has_many :charities, through: :supports
  has_one_attached :photo
  validates :email, presence: true
  validates :email, uniqueness: true
end
