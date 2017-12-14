class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|

      t.string :description
      t.float :price

      t.belongs_to :merchant, index: true

      t.timestamps
    end
  end
end
