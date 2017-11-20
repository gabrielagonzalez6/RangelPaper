class Profile < ApplicationRecord
  	belongs_to :user
  	has_many :social_networks

  	validates :name,
			  presence: { message: "Introduzca el nombre" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\ ]+)\z/, message: "Nombre contiene caracteres inválidos"}

	validates :lastname,
			  presence: { message: "Introduzca el apellido" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "Apellido contiene caracteres inválidos"}

	validates :phone,
			  presence: { message: "Introduzca el número" },
			  format: {with: /\A\+?\d{2}[- ]?\d{3}[- ]?\d{7}\z/, message: "Teléfono contiene caracteres inválidos"},
			  length: { minimum: 7, maximum: 13, :message => "Número no valido" }

	validates :email,
			  presence: { message: "Introduzca el email" },
			  format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "E-mail contiene caracteres inválidos"}

	validates :address,
			  presence: { message: "Introduzca la dirección" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "Dirección contiene caracteres inválidos"}

	validates :city,
			  presence: { message: "Introduzca la ciudad" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "Ciudad contiene caracteres inválidos"}

	validates :country,
			  presence: { message: "Seleccione país" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "País contiene caracteres inválidos"}
 
   	def to_s
		name 
	end
end


