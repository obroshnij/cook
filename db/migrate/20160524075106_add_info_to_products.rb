class AddInfoToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.text :long_description
      t.float :price
    end
  end
end
