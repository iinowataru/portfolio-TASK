class Item < ApplicationRecord
  
  attachment :image
  belongs_to :genre, optional: true
  has_many :post, dependent: :destroy
end
