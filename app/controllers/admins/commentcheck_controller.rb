class Admins::CommentcheckController < ApplicationController

    def index
        @comments = PostComment.all
        # @warui_comments = PostComment.where()
    end

    def show
        @comment = PostComment.find(params[:id])
    end

    def update
        @comment = PostComment.find(params[:id])
        @comment.update(commentcheck_params)
        redirect_to admins_commentcheck_path(@comment) 
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