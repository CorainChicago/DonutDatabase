class CreateDonuts < ActiveRecord::Migration
  def change
    create_table :donuts do |t|
      t.string :name
      t.string :description
      t.string :occassion
      t.string :type
      t.references :donut_shop

      t.timestamps null: false
    end
  end
end
