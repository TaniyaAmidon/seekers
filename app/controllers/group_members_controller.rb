class GroupMembersController < ApplicationController
  before_action :find_group_member, only: [:show, :reject, :accept, :destroy, :pending_index, :rejected_index, :accepted_index]
  before_action :find_trip, only: [:pending_index, :rejected_index, :accepted_index, :index]

  def new
    @trip = Trip.find(params[:trip_id])
    @group_member = GroupMember.new
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @group_member = GroupMember.new(group_member_params)
    @group_member.user = current_user
    @group_member.group = @trip.group
    @group_member.status = "pending"
    render 'new' unless @group_member.save
  end

  def destroy
    @group_member.destroy
  end

  # def reject
  #   @group_member.status = "rejected"
  # end

  # def accept
  #   @group_member.status = "accepted"
  # end
  def index
    @group_members = GroupMember.where(group: @trip.group)
  end

  def pending_index
    @pending_members = GroupMember.where(status: "pending", group: @trip.group)
  end
  helper_method :pending_index

  def accepted_index
    @accepted_members = GroupMember.where(status: "accepted", group: @trip.group)
  end
  helper_method :accepted_index

  def rejected_index
    @rejected_members = GroupMember.where(status: "rejected", group: @trip.group)
  end
  helper_method :rejected_index

  private

  def find_trip
    @trip = Trip.find(params[:trip_id])
  end

  def find_group_member
    @group_member = GroupMember.find(params[:id])
  end

  def group_member_params
    params.require(:group_member).permit(:group, :user, :status, :message_to_organiser)
  end
end
