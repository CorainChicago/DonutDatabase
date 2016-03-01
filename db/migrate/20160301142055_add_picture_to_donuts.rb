class AddPictureToDonuts < ActiveRecord::Migration
  def change
    add_column :donuts, :picture, :string
  end
end
