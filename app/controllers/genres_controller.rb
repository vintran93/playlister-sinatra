class GenresController < ApplicationController
  get '/genres' do
    @genres = Genre.all
    erb :'genres/index'
  end

  get '/genres/:slug' do
    @genre = Genre.find_by_slug(params[:slug])
    erb :'genres/show'
  end

end

#require 'rack-flash'

#class GenresController < ApplicationController
  #use Rack::Flash

  #get '/genres' do
  #  @genres = Genre.all
  #  erb :'/genres/index'
  #end

  #get '/genres/new' do
 #   erb :'/genres/new'
  #end

  #get '/genres/:slug' do
   # @genres = Genre.find_by_slug(params[:slug])

    #erb :'genres/show'
  #end

  #post '/genres' do
   # @genre = Genre.create(params[:genre])
   # @genre.artist = Artist.find_or_create_by(name: params[:artist][:name])
    #@genre.song_ids = params[:songs]
    #@genre.save

    #flash[:message] = "Successfully created genre."
    #redirect("/genres/#{@genre.slug}")
  #end

  #get '/genres/:slug/edit' do
    #@genre = Genre.find_by_slug(params[:slug])
    #erb :'genres/edit'
  #end

  #patch '/genres/:slug' do
   # @genre = Genre.find_by_slug(params[:slug])
   # @genre.update(params[:genre])
    #@genre.artist = Artist.find_or_create_by(name: params[:artist][:name])
    #@genre.song_ids = params[:songs]
   # @genre.save

    #flash[:message] = "Successfully updated genre."
    #redirect("/genres/#{@genre.slug}")
  #end

#end