class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :amount
      t.date :card_expires_on
      t.string :first_name
      t.string :last_name
      t.string :ip_address

      t.timestamps
    end
  end
end
