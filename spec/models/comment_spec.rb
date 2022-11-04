require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:all) do
    @user = User.create(name: 'Gomez', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Spain.')
    @post = Post.create(author_id: @user.id, title: 'My first post', text: 'A good post')
  end

  it 'should increment the comments counter' do
    expect { Comment.create(author_id: @user.id, post_id: @post.id, text: 'A good comment') }.to change { @post.reload.comments_counter }.by(1)
  end

end