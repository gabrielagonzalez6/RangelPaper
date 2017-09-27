class Event < ApplicationRecord
	has_many :even_categs, foreign_key: :event_id, dependent: :destroy
  	has_many :categories, through: :even_categs
end
