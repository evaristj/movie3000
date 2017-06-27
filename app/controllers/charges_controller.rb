class ChargesController < ApplicationController
	before_action :authenticate_user!
	def new
		@pelicula = params[:pelicula_name]
    @email = params[:user_email]
    @precio = params[:pelicula_precio]
		@@user = @user
		@amount = 500
		@@amount = @amount
		@@sub = ""
	  if params[:amount]
	  	@amount = params[:amount]
	  	@@amount = @amount
	  elsif params[:plan] == "bronce"
	  	@amount = 999
	  	@@amount = @amount
	  	@@sub = :plan
	  elsif params[:plan] == "plata"
	  	@amount = 1299
	  	@@amount = @amount
	  	@@sub = :plan
	  elsif params[:plan] == "oro"
	  	@amount = 1999
	  	@@amount = @amount
	  	@@sub = params[:plan]
	  	puts "=" * 50
	  	puts @@sub
	  end
	end
	def create
		 @amount = @@amount 
	  @user = @@user
	  @sub = @@sub
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
	  current_user.payments.create(subscription: false, channel: 'stripe', amount: @amount)
    flash[:success] = t('flash.payment')
    redirect_to settings_path
    
	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  render :new
	end
end
