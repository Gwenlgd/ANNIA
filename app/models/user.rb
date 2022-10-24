class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :voyages
  has_many :repas

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         validates :first_name, presence: true
         validates :last_name, presence: true
         validates :email, presence: true
         validates :password, presence: true
end
