class CreateDonutRatings < ActiveRecord::Migration
  def change
    create_table :donut_ratings do |t|
      t.references :user
      t.references :donut
      t.integer :score
      t.text :description
      t.references  :donut_shop
      
      t.timestamps null: false
    end
  end
end
