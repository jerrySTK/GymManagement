class ClientsController < ApplicationController
  def index
    @clients= Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path
    else
      render 'new'
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if (@client.update(client_params))
      redirect_to clients_path
    else
      render 'edit'
    end
  end

  private
    def client_params
      params.require(:client).permit(:name, :last_name, :street,:colony, :number, :telephone, :birthday)
    end
end
