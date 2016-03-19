class SubscribersController < ApplicationController
  before_filter :authenticate_user!

  def new
  end

  def update
    token = params[:stripeToken]
    customer = Stripe::Customer.create(
      card: token,
      plan: 1980,
      email: current_user.email
      )
    current_user.subscribed = true
    current_user.stripeid = customer.id
    current_user_user.save
    redirect_to cart_path
  end
end
