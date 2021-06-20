class SongsController < ApplicationController
  def index
    song = Song.all
    render json: song.as_json
  end

  def create
    song = Song.new(
      title: params[:title],
      artist: params[:artist],
      album: params[:album],
      year: params[:year],
    )
    song.save
    render json: song.as_json
  end

  def show
    song = Song.find_by(id: params[:id])
    render json: song.as_json
  end

  def update
    song = Song.find_by(id: params[:id])
    song.title = params[:title]
    song.artist = params[:artist]
    song.album = params[:album]
    song.year = params[:year]
    song.save
    render json: song.as_json
  end

  def destroy
    song = Song.find_by(id: params[:id])
    song.destroy
    render json: { message: "its been done" }
  end
end
