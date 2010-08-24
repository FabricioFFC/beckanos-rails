class UserSessionsController < ApplicationController

  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Logado com sucesso!"
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find
    if (@user_session)
      @user_session.destroy
    end
    @current_user = nil
    flash[:notice] = "Deslogado com sucesso!"
    redirect_to login_url
  end
  
end
