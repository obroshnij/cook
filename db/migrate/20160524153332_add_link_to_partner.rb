class AddLinkToPartner < ActiveRecord::Migration
  def change
    change_table :partners do |t|
      t.string :partner_link
    end
  end
end
