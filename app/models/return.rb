class Return < ApplicationRecord
  belongs_to :post
  mount_uploader :return_image, ImageUploader
end
