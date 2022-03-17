class RenameImageUrlToUrl < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :image_url, :url
  end
end
