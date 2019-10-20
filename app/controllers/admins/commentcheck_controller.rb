class Admins::CommentcheckController < ApplicationController

    def index
        @comments = PostComment.all
    end

    def show
        @comment = PostComment.find(params[:id])
    end

    def update
        @comment = PostComment.find(params[:id])
        @comment.approval =true
        @comment.save
        redirect_to admins_commentcheck_path(@comment)
    end
end