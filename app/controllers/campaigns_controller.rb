require 'pry'

class CampaignsController < ApplicationController
  before_action :authenticate_user!

  # vista de todas las capañas
  def index
    @currentUser = current_user.id
    @campaigns = Campaign.where(user_id: @currentUser)
  end

  def new
    @my_campaign = Campaign.new
  end

  def create
    @my_campaign = Campaign.new(
      name: params[:campaign][:name],
      description: params[:campaign][:description],
      start_date: params[:campaign][:start_date],
      end_date: params[:campaign][:end_date],
      user_id: current_user.id
    )
    @my_campaign.save
    redirect_to "/campaigns"
  end

  def edit

  end

  def update

  end

  # vista de una camapaña
  def show
    @my_campaign = Campaign.find_by(id: params[:id])
  end
end
