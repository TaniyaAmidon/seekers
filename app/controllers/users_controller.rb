class UsersController < ApplicationController
  before_action :find_user

  # remove skip_before authentication when signup/login flows ready
  skip_before_action :authenticate_user!

  def show
    @planned_trips = Trip.where(user_id: current_user.id)
    @joined_trips = Trip.joins(group: [:group_members]).where(group: { group_members: { user_id: current_user.id } })
    # group.group_members.where(user_id: current_user.id)
  end

  def edit
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
    params.require(:user).permit(:first_name, :last_name, :email, :password, :location, :dob, :bio, :photo)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
