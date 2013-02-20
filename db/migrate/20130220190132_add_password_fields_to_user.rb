class AddPasswordFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :password_salt, :string
    add_column :users, :persistence_token, :string
    add_column :users, :crypted_password, :string
    drop_column :users, :password
  end
end
