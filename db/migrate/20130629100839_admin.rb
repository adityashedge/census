class Admin < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :email
      t.string :encrypted_password
    end
  end
end
