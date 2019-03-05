class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create
    @group = Group.create
  end

  def destroy
    @group.destroy
  end
end
