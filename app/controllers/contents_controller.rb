class ContentsController < ApplicationController

  def new
    @my_campaign = Campaign.find_by(id: params[:campaign_id])
    @my_prototype = Prototype.find_by(id: params[:prototype_id])
    @my_content = @my_prototype.contents.new
  end

  def create
    @my_prototype = Prototype.find_by(id: params[:prototype_id])
    @my_content = @my_prototype.contents.new(content_params)
    @my_content.save
    redirect_to "/campaigns/#{params[:campaign_id]}/prototypes/#{params[:prototype_id]}"
  end

  def show
    @my_campaign = Campaign.find_by(id: params[:campaign_id])
    @my_content = Content.find_by(id: params[:id])
    @my_comments = Comment.where(content_id: @my_content.id)
    @my_comment = @my_content.comments.new
  end

  private

  def content_params
    params.require(:content).permit(:name, :description, :attachment)
  end 
end
