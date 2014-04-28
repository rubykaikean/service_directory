class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.string :services_offered
      t.string :brand_offered
      t.string :licenses
      t.integer :phones_number
      t.text :description
      t.integer :category_id
      t.integer :location_id
      t.integer :user_id

      t.timestamps
    end
  end
end
