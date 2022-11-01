class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  def recent_comments
    comments.order(created_at: :desc).limit(3)
  end

  private

  def update_posts_counter
    User.increment_counter(:posts_counter, author_id)
  end
end
