class Post < ApplicationRecord
  belongs_to :item
  belongs_to :user
  validates :body, presence: true, length: {maximum: 80}
   has_many :favorites, dependent: :destroy
  
  def favorited_by?(current_user, post_id)
   favorites.where(post_id: post_id,user_id: current_user.id).exists?
  end
end