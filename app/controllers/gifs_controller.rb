class GifsController < ApplicationController
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