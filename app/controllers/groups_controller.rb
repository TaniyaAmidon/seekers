class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create
    @group = Group.find(params[:id])
    @group = Group.create
  end

  def destroy
    @group = Group.find(params[:id])
    @group = Group.destroy
  end
end
