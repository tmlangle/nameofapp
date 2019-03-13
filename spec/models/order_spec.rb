require 'rails_helper'


describe Order, type: :model do
    it 'its not valid without a product id' do
      expect(Order.new(user_id: "nil")).not_to be_valid



    end
end
