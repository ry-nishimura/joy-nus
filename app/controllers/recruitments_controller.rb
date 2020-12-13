class RecruitmentsController < ApplicationController
  def index
  end

  def new
    @recruitment = Recruitment.new
  end

  def create
    @recruitment = Recruitment.create(recruitment_params)
  end

  private
  def recruitment_params
    params.require(:recruitment).permit(:date, :time, :team, :sport, :place, :position, :experience_id).merge(user_id: current_user.id)
  end
end