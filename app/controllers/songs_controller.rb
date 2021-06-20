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
end
