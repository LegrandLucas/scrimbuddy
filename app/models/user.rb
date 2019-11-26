class User < ApplicationRecord
  belongs_to :team
  has_many :reviews, dependent: :destroy
  has_many :messages, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
