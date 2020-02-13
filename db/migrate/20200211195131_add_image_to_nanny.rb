class AddImageToNanny < ActiveRecord::Migration[5.2]
  def change
    add_column :nannies, :image, :string
  end
end
