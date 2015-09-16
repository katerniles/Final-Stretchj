class ChargesController < ApplicationController
def new
end

def create
  # Amount in cents
  @amount = 500

  customer = Stripe::Customer.create(
    :email => 'example@stripe.com',
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
<<<<<<< HEAD
  redirect_to charges_path
=======
  redirect_to payment_path
end
>>>>>>> 1aafc0ba5cfb2ede418f1478344f62a76d849f00
end
