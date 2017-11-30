class Api::ProjectBackersController < ApplicationController
  def create_backer
    @backer = ProjectBacker.new(project_backer_params)
    @backer.backer_id = current_user.id
    if @backer.save
      @project = Project.find_by(id: project_backer_params[:project_id])
      render 'api/projects/show'
    else
      render @backer.errors.full_messages, status: 422
    end
  end

  def create_reward
    @backer = ProjectBacker.new(project_backer_params)
    @backer.backer_id = current_user.id
    @backer.reward_id = params[:reward_id]
    if @backer.save
      @reward = Reward.find_by(id: project_backer_params[:reward_id])
      render 'api/rewards/show'
    else
      render @backer.errors.full_messages, status: 422
    end
  end

  private
  def project_backer_params
    params.require(:backers).permit(:project_id, :reward_id, :cash_only)
  end
end
