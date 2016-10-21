class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:new, :create]

  def index
  end
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def user_params
      params.permit(:first_name, :last_name, :email, :password,
                                   :password_confirmation)
    end

end
