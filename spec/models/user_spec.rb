require 'rails_helper'

describe User, type: :model do
    it 'its not valid without a email' do
      expect(User.new(last_name: "nil")).not_to be_valid



    end
end
