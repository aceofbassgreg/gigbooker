class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.float :travel_radius
      t.string :contact_email
      t.string :location

      t.timestamps
    end
  end
end
