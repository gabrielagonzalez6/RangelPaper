class Model < ApplicationRecord
  	belongs_to :even_categ
  	has_many :galleries
end
