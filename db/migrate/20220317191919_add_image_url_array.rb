class AddImageUrlArray < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :image_url, :string, array:true, default: []
  end
end
