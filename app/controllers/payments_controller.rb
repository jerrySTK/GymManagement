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
    @fees = Fee.includes('fee_type').all.order('fee_types.name')

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @client = Client.find(params[:client_id])
    @payment = @client.payments.build(payment_params)
    @fees = Fee.includes('fee_type').all.order('fee_types.name')
    
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
      params.require(:payment).permit(:amount,:fee_id,:person_id)
    end
end
