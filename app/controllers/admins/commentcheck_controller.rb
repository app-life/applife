class Admins::CommentcheckController < ApplicationController
    before_action :authenticate_admin!

    def index
        @comments = PostComment.all
    end

    def show
        @comment = PostComment.find(params[:id])
    end

    def update
        @comment = PostComment.find(params[:id])
        @comment.update(commentcheck_params)
        redirect_to admins_commentcheck_index_path
    end

    def destroy
        @comment = PostComment.find(params[:id])
        @comment.destroy
        redirect_to admins_commentcheck_index_path
    end
    private
    def commentcheck_params
      params.require(:post_comment).permit(:approval)
    end
end