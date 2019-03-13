class Order < ActiveRecord::Base
  validates :user_id, numericality: { only_integer: true }
  validates :product_id, numericality: { only_integer: true }
  belongs_to :product
  belongs_to :user
end
