class AddImageUrlToWatches < ActiveRecord::Migration[7.1]
  def change
    add_column :watches, :image_url, :string
  end
end
