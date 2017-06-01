class ClientsController < ApplicationController
  def index
  end

  def new
  end

  def create
    #use hidden input to pass booleans for in_progess/completed
    @new_job = Job.create(job_params)
    if @new_job.valid?
      flash[:errors] = ["Project added!!"]
      redirect_to :back
    else
      flash[:errors] = @new_job.errors.full_messages
      redirect_to :back
    end



  end

  def show
    #client profile page
    @current_job = Job.find(current_user.id).all

  end

  def edit
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
