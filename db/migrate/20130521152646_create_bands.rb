class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :travel_radius
      t.string :float
      t.string :contact_email

      t.timestamps
    end
  end
end
