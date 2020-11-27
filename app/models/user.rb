class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :searches, dependent: :nullify
  has_many :supports, dependent: :destroy
  has_many :charities, through: :supports, source: :charity # source --> sinon active record ne comprend pas la commande user1.charities
  has_one_attached :photo
  validates :email, presence: true # devise le gere probablement mais ça ne coûte rien de rajouter des validations sur le modèle user
  validates :email, uniqueness: true

  def total_user_search
    searches.count + 1556
  end
end
