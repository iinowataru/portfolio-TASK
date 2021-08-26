class Item < ApplicationRecord
  
  attachment :image
  belongs_to :genre, optional: true
  has_many :post, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  def favorited_by?(customer)
    favorites.where(customer_id: customer.id).exists?
  end
end
