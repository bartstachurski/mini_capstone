class RemoveImageUrlAttrAddUrlAsImageAttr < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :image_url, :string
    add_column :products, :url, :string
  end
end
