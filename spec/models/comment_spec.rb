require 'rails_helper'



describe Comment, type: :model do
    it 'its not valid without a user' do
      expect(Comment.new(rating: "1")).not_to be_valid



    end
end
