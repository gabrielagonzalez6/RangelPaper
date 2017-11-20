class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :order
      t.string :theme
      t.string :color
      t.string :name
      t.integer :age
      t.date :date_event
      t.date :date_order
      t.string :city
      t.string :name_shipping
      t.string :dni_shipping
      t.string :phone_shipping
      t.text :address_shipping
      t.text :more_info

      t.timestamps
    end
  end
end
