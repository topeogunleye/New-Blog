class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  validates :name, presence: true

  # PostsCounter must be an integer greater than or equal to zero
  validates :posts_counter, numericality: { greater_than_or_equal_to: 0 }

  # returns the 3 most recent posts for a given user.
  def recent_posts
    posts.order(created_at: :desc).limit(3)
  end
end
