class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :postal_code
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
