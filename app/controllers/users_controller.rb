class UsersController < ApplicationController
  before_action :find_user

  # remove skip_before authentication when signup/login flows ready
  skip_before_action :authenticate_user!

  def show
  end

  def edit
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to trip_path(@trips)
    else
      render :new
    end
  end

  def update
    @user.update(user_params)
    if @user.save
      flash[:notice] = 'Profile updated'
      redirect_to user_path(@user)
    else
      flash[:alert] = 'Could not update profile, please try again'
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :location, :dob, :bio)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
