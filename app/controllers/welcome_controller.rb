class WelcomeController < ApplicationController
  def index
    @categories = Category.all
    @customer_feedbacks = CustomerFeedback.all
    @partners = Partner.all
    @product_counter = Product.all.count
  end

  def sitemap
    respond_to do |format|
      format.xml { render file: 'public/sitemaps/sitemap.xml' }
      format.html { redirect_to root_url }
    end
  end

end
