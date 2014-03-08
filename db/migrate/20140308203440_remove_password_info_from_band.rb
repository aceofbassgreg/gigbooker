class RemovePasswordInfoFromBand < ActiveRecord::Migration
  def change
    remove_column :bands, :password_hash, :string
    remove_column :bands, :password_salt, :string
  end
end
