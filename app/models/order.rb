class Order < ActiveRecord::Base
  extend Enumerize
  enumerize :status, in: [:pending, :accepted, :done, :rejected], scope: true, default: :pending

  def new
    @order = Order.new(contact_info: params[:contact_info], order_info: params[:order_info])
    save
  end

end
