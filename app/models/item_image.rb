class ItemImage < ApplicationRecord
  belongs_to :item, foreign_key: :item_image_id, dependent: :destroy
  mount_uploader :image, ImageUploader
end
