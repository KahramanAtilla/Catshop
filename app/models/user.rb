class User < ApplicationRecord
    after_create :welcome_send
    after_create :set_cart

  has_one :cart

def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

def set_cart
  @cart = Cart.create(user_id: self.id)
end


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
