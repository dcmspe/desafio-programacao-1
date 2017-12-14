class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.integer :quantity

      t.belongs_to :purchaser
      t.belongs_to :item

      t.timestamps
    end
  end
end
