class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :contact_info
      t.text :order_info
      t.timestamps null: false
    end
  end
end
