class OrdersController < ApplicationController


  def create
    @order = Order.new(order_params).save
    redirect_to :back, notice: 'Ваш заказ успешно отправлен. Мы свяжемся с вами в ближайшее время! :)'
  end


  private
  def order_params
      params
        .require(:order)
        .permit(:id, :status, :order_info, :contact_info)
    end
end
