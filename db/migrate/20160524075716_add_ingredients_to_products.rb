class AddIngredientsToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.text :ingredients
    end
  end
end
