require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:all) do
    @user = User.create(name: 'Gomez', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Spain.')
    @post = Post.create(author_id: @user.id, title: 'My first post', text: 'A good post')
  end

  # test Post model update_comments_counter method
  it 'update_comments_counter' do
    Comment.create(author_id: @user.id, post_id: @post.id, text: 'A good comment')
    expect(@post.comments_counter).to eq(1)
  end
end

