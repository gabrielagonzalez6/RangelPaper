class Question < ApplicationRecord

	validates :question,
			  presence: { message: "Introduzca la pregunta" },
			  format: {with: /\A([A-Za-z0-9áÁéÉíÍóÓúÚñÑ\-\.\,\¿\?\ ]+)\z/, message: "Pregunta contiene caracteres inválidos"}

	validates :answer,
			  presence: { message: "Introduzca la respuesta" }

end
