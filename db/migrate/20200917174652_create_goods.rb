class CreateGoods < ActiveRecord::Migration[6.0]
  def change
    create_table :goods do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false
      t.integer :price, null: false
      t.text :comment, null: false
      t.integer :category_id, null: false
      t.integer :status_id, null: false
      t.integer :delivery_id, null: false
      t.integer :area_id, null: false
      t.integer :shippingdate_id, null: false
    end
  end
end
