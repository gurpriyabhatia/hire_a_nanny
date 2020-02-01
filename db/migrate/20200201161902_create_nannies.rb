class CreateNannies < ActiveRecord::Migration[5.2]
  def change
    create_table :nannies do |t|
      t.string :nanny_name
      t.text :address
      t.string :email
      t.string :phone_number
      t.integer :years_of_experience
      t.integer :price_per_hour

      t.timestamps
    end
  end
end
