class AddRestuarantIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :restuarant_id, :integer
  end
end
