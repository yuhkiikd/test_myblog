class TestBlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
    @test_blogs = TestBlog.all.order('id DESC')
  end

  def new
    @test_blog = TestBlog.new
  end

  def create
    @test_blog = TestBlog.create(test_blog_params)
    if params[:back]
      render :new
    else
      if @test_blog.save
        redirect_to test_blogs_path, notice: "ブログを作成しました！"
      else
        render 'new'
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @test_blog.update(test_blog_params)
      redirect_to test_blogs_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @test_blog.destroy
    redirect_to test_blogs_path, notice:"ブログを削除しました！"
  end

  def confirm
    @test_blog = TestBlog.new(test_blog_params)
    render :new if @test_blog.invalid?
  end

  private

  def test_blog_params
    params.require(:test_blog).permit(:title, :content)
  end

  def set_blog
    @test_blog = TestBlog.find(params[:id])
  end
end
