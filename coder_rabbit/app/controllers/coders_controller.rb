class CodersController < ApplicationController
  def index
  end

  def new
  end

  def create
    #coder accepts job, update Job with coder_id
  end

  def show
    #coder profile page
    @current_job = Job.find(current_user.id)



  end

  def edit
  end

  def update
  end

  def destroy
  end
end
