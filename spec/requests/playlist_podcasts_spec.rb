require 'rails_helper'

RSpec.describe "PlaylistPodcasts", type: :request do
  describe "GET /playlist_podcasts" do
    it "works! (now write some real specs)" do
      get playlist_podcasts_path
      expect(response).to have_http_status(200)
    end
  end
end
