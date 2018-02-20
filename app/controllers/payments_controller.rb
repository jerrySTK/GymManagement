class PaymentsController < ApplicationController
  def index
    @client = Client.find(params[:client_id])
  end

  def new
    @client= Client.find(params[:client_id])
    @payment = @client.payments.build()
  end

  def create
    @client = Client.find(params[:client_id])
    @payment = @client.payments.build(payment_params)
    if @payment.save
      redirect_to client_payments_path(@client)
    else
      render 'new'
    end
  end

  private 
    def payment_params
      params.require(:payment).permit(:amount,:duration,:person_id)
    end
end
