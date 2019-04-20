class PostsController < ApplicationController

    def index
    end

    def new
        @post = Post.new
    end

    def create  #create a new post
        @post = Post.new(post_params)

        if @post.save
            redirect_to @post
        else 
            render 'new'
        end
    end

    def show
        @post = Post.find(params[:id])
end

private

def post_params   # vaidation for parameters passed through post method
    params.require(:post).permit(:title, :content)
end

end