class SubscriptionsController < ApplicationController
  before_action :authenticate_user!

  def show
    @subscription = Subscription.find(params[:id])
  end

   def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      redirect_to @subscription
    end
  end

  private

  def subscription_params
    params.require(:subscription).permit(:email)
  end
end