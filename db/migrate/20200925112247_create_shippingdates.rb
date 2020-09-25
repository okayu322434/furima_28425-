class CreateShippingdates < ActiveRecord::Migration[6.0]
  def change
    create_table :shippingdates do |t|

      t.timestamps
    end
  end
end
