class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :update, :destroy]

  # Custom Route:
  # Display the most recently created playlists
  # GET /playlists/recent
  def recent
    @playlists = Playlist.order(created_at: :desc).limit(5)

    render json: @playlists.to_json(include: :user)
  end

  # Custom Route:
  # Display all playlists with a tag matching the phrase specified in the params
  # GET /playlists/tagsearch/:q
  def tagsearch
    @playlists = Playlist.where("tags LIKE ?", "%" + params[:q] + "%")

    render json: @playlists

  end

  # Custom Route:
  # To save time and effort when conducting a tag search, get all playlists
  # but return ONLY the tags of each
  # GET /playlists/alltags
  def alltags
    @playlists = Playlist.select(:tags)

    render json: @playlists
  end

  # GET /playlists
  def index
    @playlists = Playlist.all

    render json: @playlists
  end

  # GET /playlists/1
  def show
    render json: @playlist.to_json(include: [:tracks, :user])
  end

  # POST /playlists
  def create
    @playlist = Playlist.new(playlist_params)

    if @playlist.save
      render json: @playlist, status: :created, location: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /playlists/1
  def update
    if @playlist.update(playlist_params)
      render json: @playlist
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /playlists/1
  def destroy
    @playlist.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def playlist_params
      params.require(:playlist).permit(:title, :user_id, :tags)
    end
end
