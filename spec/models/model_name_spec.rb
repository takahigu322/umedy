require 'rails_helper'

RSpec.describe User, type: :model do
  # 記事の題名、本文、外部キー（user_id）があれば有効。
  it "is valid with title, text" do
    user = User.new
    expect(user.save).to be_falsey 
    
  end
end
