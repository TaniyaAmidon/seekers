class GroupMembersController < ApplicationController
  before_action :find_group_member, only: [:show, :edit, :update, :destroy]

  def new
  end

  def create
    @trip = Trip.find(params[:id])
    @group_member = GroupMember.new
    @group_member.user = current_user
    @group_member.group = @trip.group
    @group_member.status = "pending"
  end

  def destroy
    @group_member.destroy
    # redirect_to (group_member inder show)
  end

  def edit

  end

  def update

  end


  private

  def find_group_member
    @group_member = GroupMember.find(params[:id])
  end

  def group_member_params
    params.require(:group_member).permit(:group, :user, :status)
  end
end
