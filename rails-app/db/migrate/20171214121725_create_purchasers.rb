class CreatePurchasers < ActiveRecord::Migration[5.1]
  def change
    create_table :purchasers do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
