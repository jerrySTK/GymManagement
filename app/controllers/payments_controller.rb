class PaymentsController < ApplicationController
  def index
    @client = Client.find(params[:client_id])

    respond_to do |format|
      format.html
      format.js { render partial: 'list'}
    end
  end

  def new
    @client= Client.find(params[:client_id])
    @payment = @client.payments.build()

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @client = Client.find(params[:client_id])
    @payment = @client.payments.build(payment_params)
    if @payment.save
      respond_to  do |format|
        format.html { redirect_to client_payments_path(@client) }
        format.js 
      end
    else
      respond_to  do |format|
        format.html { render 'new' }
        format.js { render 'new'}
      end
      
    end
  end

  private 
    def payment_params
      params.require(:payment).permit(:amount,:duration,:person_id)
    end
end
