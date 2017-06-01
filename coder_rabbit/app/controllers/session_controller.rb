class SessionController < ApplicationController

  def create_coder
    @user = Coder.create(coder_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to "/coders"
    else
      flash[:errors] = ['invalid combo']
      redirect_to :back
    end
  end

  def create_client
    @user = Client.create(client_params)
    if @user.valid?
      session[:user_id] = @user.id
      redirect_to "/clients"
    else
      flash[:errors] = ['invalid combo']
      redirect_to :back
    end
  end

  def log_in_coder
    @user = Coder.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to "/coders/"
    else
      flash[:errors] = ['invalid email/password combo']
      redirect_to :back
    end
  end

  def log_in_client
    @user = Client.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to "/clients/"
    else
      flash[:errors] = ['invalid email/password combo']
      redirect_to :back
    end
  end

  def destroy
    reset_session
    redirect_to "/session/index"
  end

  private
    def coder_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :languages, :bootcamp, :profile, :skills)
    end

  private
    def client_params
      params.require(:user).permit(:company_name, :admin_name, :email, :password, :profile)
    end

end
