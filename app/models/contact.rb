class Contact < ApplicationRecord

	validates :name,
			  presence: { message: "Introduzca el nombre" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\ ]+)\z/, message: "Nombre contiene caracteres inválidos"}

	validates :lastname,
			  presence: { message: "Introduzca el apellido" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "Apellido contiene caracteres inválidos"}

	validates :phone,
			  presence: { message: "Introduzca el número" },
			  format: {with: /\A[\s()+-]*([0-9][\s()+-]*){6,20}\z/, message: "Teléfono contiene caracteres inválidos"},
			  length: { minimun: 7, maximum: 17, :message => "Número no valido" }

	validates :email,
			  presence: { message: "Introduzca el email" },
			  format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "E-mail inválido"}

	validates :message,
			  presence: { message: "Introduzca el mensaje" }

 
   	def to_s
		name 
	end

end
