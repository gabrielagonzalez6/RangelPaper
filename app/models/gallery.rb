class Gallery < ApplicationRecord
  	belongs_to :model

  	has_many :gallery_images, dependent: :delete_all
 	accepts_nested_attributes_for :gallery_images

	validates :model_id,
            presence: { message: "Seleccione el modelo" }
           
end
