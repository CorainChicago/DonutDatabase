class AddPictureToDonutShops < ActiveRecord::Migration
  def change
    add_column :donut_shops, :picture, :string
  end
end
