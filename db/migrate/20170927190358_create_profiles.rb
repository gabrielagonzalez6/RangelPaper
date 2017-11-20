class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :lastname
      t.string :phone
      t.string :email
      t.text :address
      t.string :city
      t.string :country
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
