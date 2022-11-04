class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  def update_comments_counter
    Post.increment_counter(:comments_counter, post_id)
  end
end

LP6YGgWoWMfXDdk7uZgo7ajKoNd71UBU6D