class AddDescriptionToCategory < ActiveRecord::Migration
  def change
    change_table :categories do |t|
      t.text :description
    end
  end
end
