class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  attachment :image
  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
