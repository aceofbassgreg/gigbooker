class CreateBandGigJoinTable < ActiveRecord::Migration
  def change
    create_table :bands_gigs, id: false do |t|
      t.integer :band_id
      t.integer :gig_id
    end
  end
end
