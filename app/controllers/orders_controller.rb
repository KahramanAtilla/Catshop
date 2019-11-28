class OrdersController < ApplicationController
  def create
    @kart = Cart.find_by(user_id: current_user.id)
    @order = Order.create(user: current_user)
    @order.items << @kart.items

    JoinCartItem.where(cart_id: @kart.id).destroy_all

    redirect_to root_path
  end
end
