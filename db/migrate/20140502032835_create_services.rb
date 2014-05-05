class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.integer :company_id
      t.string :service_type
      t.integer :service_period
      t.string :service_location
      t.integer :delivery_time
      t.text :description

      t.timestamps
    end

    add_column :companies, :phones_number_2, :integer

    add_column :companies, :phones_number_3, :integer
  end
end
