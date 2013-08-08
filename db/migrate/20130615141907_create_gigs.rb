class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :name
      t.integer :venue_id

      t.timestamps
    end
  end
end
