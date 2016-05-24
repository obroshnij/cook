class CreateCustomerFeedbacks < ActiveRecord::Migration
  def change
    create_table :customer_feedbacks do |t|
      t.string :feedback_image
      t.text :feedback_text
      t.string :feedback_name
      t.timestamps null: false
    end
  end
end
