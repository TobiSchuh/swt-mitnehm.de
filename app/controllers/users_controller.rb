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
      flash[:success] = "Herzlich Willkommen bei mitnehm.de!"
      redirect_to @user
      
    else
      render 'new'
    end
  end



  private

    def user_params
      params.require(:user).permit(:name, :benutzername, :email, :password,
                                   :password_confirmation)
    end


end

