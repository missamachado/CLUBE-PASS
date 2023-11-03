class ClubPassesController < ApplicationController
  def index
    @club_passes = ClubPass.all
  end

  def show
    @club_pass = ClubPass.find(params[:id])
  end

  def new
    @club_pass = ClubPass.new
  end

  def create
    @club_pass = ClubPass.new(club_pass_params)
    @club_pass.user = current_user
    if @club_pass.save
      redirect_to club_passes_path
    else
      render 'new'
    end
  end

  private

  def club_pass_params
    params.require(:club_pass).permit(:category, :description, :price, :start_date, :end_date)
  end
end
