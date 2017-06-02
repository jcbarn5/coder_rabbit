class CodersController < ApplicationController
  def index
  end

  def new
  end

  def create
    
  end

  def show
    #coder profile page
    @current_job = Job.find(current_client.id)
    @completed_job = Job.find(current_user.id).includes(completed: true)

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
