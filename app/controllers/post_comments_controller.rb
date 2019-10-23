class PostCommentsController < ApplicationController
    def create
        app = App.find(params[:app_id])
        post_comment = PostComment.new(post_comment_params)
        post_comment.app_id = app.id
        post_comment.delete_flg = false
        post_comment.save!
        redirect_to app_path(app)
    end

    def edit
      @app = App.find(params[:app_id])
      @post_comment = PostComment.find_by(app_id: @app.id,id: params[:id])
    end


    def update
      @app = App.find(params[:app_id])
      @post_comment = PostComment.find_by(app_id: @app.id,id: params[:id])
      @post_comment.update(post_comment_params)
      if @post_comment.save!
       redirect_to admins_commentcheck_index_path
      else
        render :edit
      end
    end

    private
    def post_comment_params
      params.require(:post_comment).permit(:comment,:delete_flg)
    end
end
