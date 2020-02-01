class ChangeColumnDefault < ActiveRecord::Migration[5.2]
  def change
    change_column :nannies, :years_of_experience, :integer, default: 0
  end
end
