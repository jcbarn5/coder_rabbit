class ClientsController < ApplicationController
  def index

  end

  def new
  end

  def create
    #create rating...
    @coder = Coder.find(params[:id])
    #use drop down menu so they are only able to select values 1-5
    @coder.update(rating: params[:rating])
  end

  def show
    #client profile page
    @current_job = Job.find(current_client.id).all
    @completed_job = Job.where("client_id = ?", current_client.id).all
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update

  end

  def destroy
    @job = Job.find(params[:id])
    @user = Client.find(session[:user_id])
    @job.destroy if @user == @job.client
    redirect_to :back
  end

  private
    def job_params
      params.require(:job).permit(:in_progess, :completed, :description, :amount, :client_id)
    end

end
