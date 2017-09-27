class EvenCateg < ApplicationRecord
  	belongs_to :event
  	belongs_to :category
  	has_many :models
end
