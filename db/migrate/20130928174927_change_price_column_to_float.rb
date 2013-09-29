class ChangePriceColumnToFloat < ActiveRecord::Migration
  def change
  	change_column :posts, :price, :float
  end
end
