module PostsHelper

	def index
    @comments = Comment.all
    @show_comment = Comment.show_comment


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end
end
