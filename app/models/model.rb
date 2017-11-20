class Model < ApplicationRecord
  	belongs_to :category

  	has_many :galleries

  	validates :name,
			  presence: { message: "Introduzca el nombre" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\ ]+)\z/, message: "Nombre contiene caracteres inválidos"},
			  uniqueness: { scope: :name, message: "%{value} ya existe"}

	validates :description,
			  presence: { message: "Introduzca la descripción" }

   	def to_s
		name
	end

end
