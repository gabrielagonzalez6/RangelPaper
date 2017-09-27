class Category < ApplicationRecord
	has_many :even_categs, foreign_key: :category_id, dependent: :destroy
  	has_many :events, through: :even_categs


end
