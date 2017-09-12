class PlansController < ApplicationController

  def create
    @idea = Idea.find(params[:idea_id])
    @plan = @idea.plans.create(plan_params)
    redirect_to idea_path(@idea)
  end

  private
  def plan_params
    params.require(:plan).permit(:plan_name, :desc)
  end
end
