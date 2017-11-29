class Api::ProjectBackersController < ApplicationController
  def create_backer
    @backer = ProjectBacker.new(project_backer_params)
    if @backer.save
      @project = Project.find_by(id: project_backer_params[:id])
      render 'api/projects/show'
    else
      render @backer.errors.full_messages, status: 422
    end
  end

  private
  def project_backer_params
    params.require(:backers).permit(:project_id, :reward_id, :cash_only)
  end
end
