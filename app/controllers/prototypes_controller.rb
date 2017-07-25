class PrototypesController < ApplicationController
  
  def new
    @my_campaign = Campaign.find_by(id: params[:campaign_id])
    @my_prototype = @my_campaign.prototypes.new
  end

  def create
    @my_campaign = Campaign.find_by(id: params[:campaign_id])
    @my_prototype = @my_campaign.prototypes.new(prototype_params)
    @my_prototype.save
    redirect_to "/campaigns/#{params[:campaign_id]}/prototypes/#{@my_prototype.id}"
  end

  def edit

  end

  def update

  end

  def remove

  end

  # vista del prototipo
  def show
    @my_prototype = Prototype.find_by(id: params[:id])
  end

  private

  def prototype_params
    params.require(:prototype).permit(:name, :description)
  end 

end
