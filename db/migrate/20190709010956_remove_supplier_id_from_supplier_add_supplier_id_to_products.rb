class RemoveSupplierIdFromSupplierAddSupplierIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :supplier_id, :integer
    remove_column :suppliers, :supplier_id, :integer
  end
end
