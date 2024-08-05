class GroupsController < ApplicationController
  def new
    @group = Group.new
    @group.participants.build
  end

  def create
    @group = Group.new(group_params)
    logger.debug "Received parameters: #{params.inspect}"
    if @group.save
      redirect_to @group, notice: "Group created"
    else
      render :new
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, participants_attributes: [:name])
  end
end
