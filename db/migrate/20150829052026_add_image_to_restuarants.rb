class AddImageToRestuarants < ActiveRecord::Migration
  def change
    add_column :restuarants, :image, :string
  end
end
