class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.integer :list_id
      t.integer :product_id
      t.decimal :amount
      t.string :unit
      t.string :store
      t.boolean :complete

      t.timestamps
    end
  end
end
