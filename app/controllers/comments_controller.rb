class CommentsController < ApplicationController

    before_action :authenticate_user!, :only => [:create]

  def create
    @article =Article.find(params[:article_id])
    @com=@article.comments.new(comment_params)
    @com.author = current_user.username
    @com.save
    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
