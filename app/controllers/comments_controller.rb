class CommentsController < ApplicationController
  def create
    @my_content = Content.find_by(id: params[:content_id])
    @my_comment = @my_content.comments.new(comment_params)
    @my_comment.user = current_user
    @my_comment.save
    redirect_to "/campaigns/#{params[:campaign_id]}/prototypes/#{params[:prototype_id]}/contents/#{params[:content_id]}"
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_text)
  end
end
