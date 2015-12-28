class CreateDonutRatings < ActiveRecord::Migration
  def change
    create_table :donut_ratings do |t|
      t.references :user
      t.references :donut
      t.references  :donut_shop
      t.integer :score
      t.text :description
      
      t.timestamps null: false
    end
  end
end
