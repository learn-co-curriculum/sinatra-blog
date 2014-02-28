class BlogsController < ApplicationController
  get '/' do
    @posts = Post.all

    erb :"posts/index.html"
  end


  get '/posts/new' do
    @post = Post.new

    erb :"posts/new.html"
  end

  get '/posts/:id' do
    @post = Post.find(params[:id])

    erb :"posts/show.html"
  end

  post '/posts' do

    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]

    if @post.save
      redirect "/"
    else
      erb :"posts/new.html"
    end
  end


end
