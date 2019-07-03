class AddAttrInOrOutOfStock < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :instock, :boolean
  end
end
