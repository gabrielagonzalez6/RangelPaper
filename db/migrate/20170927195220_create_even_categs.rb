class CreateEvenCategs < ActiveRecord::Migration[5.0]
  def change
    create_table :even_categs do |t|
      t.references :event, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
