class GalleryImage < ApplicationRecord
  belongs_to :gallery

  mount_uploader :image, ImageUploader

  validates :image,
            format:{ with: %r{\.(gif|jpg|jpeg|png)\z}i, message: "Wrong file format" }
end
