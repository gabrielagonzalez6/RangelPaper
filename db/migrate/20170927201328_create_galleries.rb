class CreateGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
      t.text :image, array: true
      t.boolean :status
      t.references :model, foreign_key: true

      t.timestamps
    end
  end
end
