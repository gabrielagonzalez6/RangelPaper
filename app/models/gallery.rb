class Gallery < ApplicationRecord
  	belongs_to :model

	validates :model_id,
            presence: { message: "Seleccione el modelo" }
           
end
