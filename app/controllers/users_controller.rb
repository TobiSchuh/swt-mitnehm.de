class UsersController < ApplicationController


  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end


  def create
   @user = User.new(user_params)    
    if @user.save
      log_in @user
      flash[:success] = "Herzlich Willkommen bei mitnehm.de!"
      redirect_to @user
      
    else
      render 'new'
    end
  end


  def edit
    @user = User.find(params[:id])
  end

   def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Das Profil wurde aktualisiert"
      redirect_to @user

    else
      render 'edit'
    end
  end


  def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

  private

    def user_params
      params.require(:user).permit(:name, :benutzername, :email, :password,
                                   :password_confirmation)
    end


end

