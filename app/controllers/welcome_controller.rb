class WelcomeController < ApplicationController
  def index
    @categories = Category.all
    @customer_feedbacks = CustomerFeedback.all
    @partners = Partner.all
    @product_counter = Product.all.count
  end
end
