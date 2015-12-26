class CreateDonutShops < ActiveRecord::Migration
  def change
    create_table :donut_shops do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :phone
      t.string :website
      t.references :donut

      t.timestamps null: false
    end
  end
end
