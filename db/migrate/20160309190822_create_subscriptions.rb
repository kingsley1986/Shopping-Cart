class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.integer :credict_card_number
      t.integer :security_code
      t.date :card_expire

      t.timestamps null: false
    end
  end
end
