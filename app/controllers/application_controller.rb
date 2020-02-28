
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    redirect 'articles/new'
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    @article = Article.create(params)
    redirect "/articles/#{@article.id}"
  end

  get '/articles/:id' do
    @article = Article.find(params["id"])
    erb :show
  end

  get '/articles' do
    @article = Article.all
    erb :index
  end

  get '/articles/:id/edit' do
    @article = Article.find(params["id"])
    erb :edit
  end

  patch '/articles/:id' do
    @article = Article.find(params["id"])
    new_params = {}
    new_params[:title] = params("title")
    new_params[:content] = params("content")
    @article.update(new_params)
    redirect "/articles/#{@article}"
  end



end
