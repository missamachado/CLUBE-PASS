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
    if club_pass.save
      redirect_to @club_pass
    else
      render 'new'
    end
end

private

def club_pass_params
  params.require(:club_pass).permit(:category, :description, :price, :start_date, :end_date, :seller_id)
end
end
