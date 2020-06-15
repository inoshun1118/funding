class Backer < ApplicationRecord
  validates :address, :money_value, :use_id, :post_id, presence: true
  belongs_to :user
  belongs_to :post
end
