class PostCommentsController < ApplicationController
    def create
        app = App.find(params[:app_id])
        post_comment = PostComment.new(post_comment_params)
        post_comment.app = app
        post_comment.save!
        redirect_to app_path(app)
    end
    private
    def post_comment_params
      params.require(:post_comment).permit(:comment)
    end
end
