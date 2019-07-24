class PlaylistPodcastsController < ProtectedController
  before_action :set_playlist_podcast, only: [:show, :update, :destroy]

  # GET /playlist_podcasts
  def index
    @playlist_podcasts = PlaylistPodcast.all

    render json: @playlist_podcasts
  end

  # GET /playlist_podcasts/1
  def show
    render json: @playlist_podcast
  end

  # POST /playlist_podcasts
  def create
    @playlist_podcast = PlaylistPodcast.new(playlist_podcast_params)

    if @playlist_podcast.save
      render json: @playlist_podcast, status: :created, location: @playlist_podcast
    else
      render json: @playlist_podcast.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /playlist_podcasts/1
  def update
    if @playlist_podcast.update(playlist_podcast_params)
      render json: @playlist_podcast
    else
      render json: @playlist_podcast.errors, status: :unprocessable_entity
    end
  end

  # DELETE /playlist_podcasts/1
  def destroy
    @playlist_podcast.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist_podcast
      @playlist_podcast = PlaylistPodcast.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def playlist_podcast_params
      params.require(:playlist_podcast).permit(:playlist_id, :podcast_id)
    end
end
