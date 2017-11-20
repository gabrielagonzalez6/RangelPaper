class Event < ApplicationRecord
	has_many :categories

  	validates :name,
			  presence: { message: "Introduzca el nombre" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\ ]+)\z/, message: "Nombre contiene caracteres inválidos"}

	def to_s
		name 
	end
end
