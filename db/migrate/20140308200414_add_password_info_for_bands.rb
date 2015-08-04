class AddPasswordInfoForBands < ActiveRecord::Migration
  def change
    add_column :bands, :password_hash, :string
    add_column :bands, :password_salt, :string
  end
end
