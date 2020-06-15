class Backer < ApplicationRecord
  validates :address, :money_value, :user_id, :post_id, presence: true
  belongs_to :user
  belongs_to :post
end
