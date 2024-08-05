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
    params.require(:group).permit(:name, :responsable, :address, :phone, :email, :discipline, :level, :title_of_music, :compositor, :length_of_piece, participants_attributes: [:name, :last_name, :birth_date, :age])
  end
end
