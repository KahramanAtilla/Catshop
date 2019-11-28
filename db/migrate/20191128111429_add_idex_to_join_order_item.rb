class AddIdexToJoinOrderItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :join_order_items, :order, foreign_key: true
    add_reference :join_order_items, :item, foreign_key: true
    end
  end
