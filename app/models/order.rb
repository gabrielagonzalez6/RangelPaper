class Order < ApplicationRecord

	validates :order,
			  presence: { message: "Introduzca el pedido" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\ ]+)\z/, message: "Pedido contiene caracteres inválidos"}

	validates :theme,
			  presence: { message: "Introduzca la temática" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "Temática contiene caracteres inválidos"}

	validates :color,
			  presence: { message: "Introduzca colores" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "Colores contiene caracteres inválidos"}

	validates :name,
			  presence: { message: "Introduzca homenajeado" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "Nombre contiene caracteres inválidos"}

	validates :age,
			  presence: { message: "Introduzca la edad" },
			  length: { minimum: 0, maximum: 99, :message => "Edad no valida" }

	validates :date_event,
			  presence: { message: "Introduzca la fecha del evento" }

	validates :date_order,
			  presence: { message: "Introduzca la fecha de la entrega del pedido" }

	validates :city,
			  presence: { message: "Introduzca ciudad" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "Ciudad contiene caracteres inválidos"}

	validates :name_shipping,
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "Datos de envío: Nombre contiene caracteres inválidos"}

	validates :dni_shipping,
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "Datos de envío: Nombre contiene caracteres inválidos"}

	validates :phone_shipping,
			  format: {with: /\A[\s()+-]*([0-9][\s()+-]*){6,20}\z/, message: "Teléfono contiene caracteres inválidos"},
			  length: { minimum: 7, maximum: 13, :message => "Número no valido" }
	
	validates :address_shipping,
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "Datos de envío: Nombre contiene caracteres inválidos"}

	validates :more_info,
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\s]+)\z/, message: "Datos de envío: Nombre contiene caracteres inválidos"}

end
