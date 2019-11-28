class CartsController < ApplicationController
  def show
    @cart = Cart.find_by(user_id: current_user.id)
   # @items = all_items
  end

#    Cart.find_by(user_id: current_user.id).items << Item.find(params[:id])

  def update
    @carti = Cart.find_by(user_id: current_user.id)
    @itemi = Item.find(params[:id])


    if current_user
      @carti.items << @itemi

    else
      redirect_to new_user_session_path
    end

  end


end
