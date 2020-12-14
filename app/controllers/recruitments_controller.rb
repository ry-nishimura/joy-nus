class RecruitmentsController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
  end

  def new
    @recruitment = Recruitment.new
  end

  def create
    @recruitment = Recruitment.new(recruitment_params)
    if @recruitment.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def recruitment_params
    params.require(:recruitment).permit(:date, :time, :team, :sport, :place, :position, :experience_id).merge(user_id: current_user.id)
  end
end