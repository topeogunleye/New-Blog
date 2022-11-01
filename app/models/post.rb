class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  def recent_comments
    Comments.where(post_id: id).order(created_at: :desc).limit(5)
  end

  private

  def update_posts_counter
    User.increment_counter(:posts_counter, author_id)
  end
end
