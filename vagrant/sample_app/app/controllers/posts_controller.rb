class PostsController < ApplicationController
  def new
  	  @post = Post.new
  end
  
  def create
  	#ストロングパラメータ使用
  	post = Post.new(post_params)
    # DBへの保存
  	post.save
  	#トップ画面へリダイレクト
  	redirect_to '/top'
  end
  
  private

  def post_params
  	  params.require(:post).permit(:title, :body)
  end
end
