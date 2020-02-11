class AddBioToNanny < ActiveRecord::Migration[5.2]
  def change
    add_column :nannies, :bio, :string
  end
end
