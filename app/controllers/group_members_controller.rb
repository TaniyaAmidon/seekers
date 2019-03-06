class GroupMembersController < ApplicationController
  def new
  end

  def create
    @group_member = GroupMember.new(group_member_params)
  end

  def destroy
  end

  private

  def group_member_params
    params.require(:group_member).permit(:group, :user, :accepted)
  end
end
