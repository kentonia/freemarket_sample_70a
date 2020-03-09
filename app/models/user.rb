class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :sending_destination

  validates :nickname,           presence: true
  validates :email,              presence: true, uniqueness: true, format: { with: /\A([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+/i}
  validates :password,           presence: true, length: { minimum: 7 }
  validates :encrypted_password, presence: true, length: { minimum: 7 }
  validates :first_name,         presence: true, format: { with: /\A[一-龥ぁ-ん]/ }
  validates :last_name,          presence: true, format: { with: /\A[一-龥ぁ-ん]/ }
  validates :first_kana,         presence: true, format: { with: /\A[ぁ-ん]/ }
  validates :last_kana,          presence: true, format: { with: /\A[ぁ-ん]/ }
  validates :birth_year,         presence: true
  validates :birth_month,        presence: true
  validates :birth_day,          presence: true
end