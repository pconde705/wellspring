class Api::RewardsController < ApplicationController
  before_action :require_logged_in


  def create
    @reward = Reward.new(reward_params)
    @reward.project_id = params[:project_id]
    if @reward.save
      render :show
    else
      render json: @reward.errors.full_messages, status: 422
    end
  end

  private
  def reward_params
    params.require(:reward).permit(:project_id, :amount, :reward_subtitle, :reward_description, :includes, :reward_date, :reward_backers)
  end

end
