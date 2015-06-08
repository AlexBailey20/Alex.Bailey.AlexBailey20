class CreatePurchaseHistories < ActiveRecord::Migration
  def change
    create_table :purchase_histories do |t|
      t.integer :user_id
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
