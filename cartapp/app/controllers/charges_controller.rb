class ChargesController < ApplicationController
    
    def new
<<<<<<< HEAD
=======
    #display total in checkout
      @amount = params[:amount]
>>>>>>> secondaryrep/master
    end

def create
  # Amount in cents
  @amount = 2500
  
  #amount = params[:amount] # "value1"

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'eur'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end

end