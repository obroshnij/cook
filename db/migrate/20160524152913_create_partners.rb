class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :partner_image
      t.string :partner_name
      t.text :partner_description
      t.timestamps null: false
    end
  end
end
