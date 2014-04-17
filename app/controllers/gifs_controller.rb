class GifsController < ApplicationController
  def show
    @gif = Gif.find_by_id(params['id'])
  end
  
  def new
  end
  
  def create
    g = Gif.new
    g.url = params['url']
    g.name = params['name']
    g.save
    redirect_to '/gifs'
  end
  
  def index
    @gifs = Gif.all
  end
end