class Users::SessionsController < Devise::SessionsController
  include CurrentCart
  before_action :set_cart
  
  def new
     super
  end

   def create
     super
  end
end
