class SocialNetwork < ApplicationRecord
  	belongs_to :profile

  	validates :name,
			  presence: { message: "Introduzca el nombre o usuario" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\ ]+)\z/, message: "Nombre o usuario contiene caracteres inválidos"}

	validates :sn_type,
			  presence: { message: "Introduzca red social" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "Red Social contiene caracteres inválidos"}
end
