class JobsController < ApplicationController
  def index
    @jobs = Job.all
    #query on front end to display all unnasigned jobs for coders
    @jobs_available = Job.where("in_progess = ?", false)
    #querty for clients to display all jobs, completed jobs for their posting reference
    #dashboard for all jobs, coders and clients can view
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
    #show specific job info
    @job = Job.find(params[:id])
  end

  def edit
    #show specific job to edit, values in form
    @job = Job.find(params[:id])
  end

  def update
    #coder accepts job, update Job with coder_id
    @job = Job.find(params[:id])
    if @job.update(rating: params[:rating])
      redirect_to "jobs/show/:id"
    else
      flash[:errors] = ['invalid field entry']
      redirect_to :back
  end
end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
  end

  private
    def job_params
      params.require(:job).permit(:in_progess, :completed, :description, :amount, :client_id)
    end

end
