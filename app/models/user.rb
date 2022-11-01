class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'
end

def recent_posts
   Post.where(author_id: id).order(created_at: :desc).limit(3)
end

User.create(name: 'Tom', last_name: 'Smith', age: '37') # Create
User.find_by(name: 'Tom') # Read
User.find(1).update(name: 'Ann') # Update
User.find_by(name: 'Ann').delete # Delete