require "rails_helper"

RSpec.describe PlaylistPodcastsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/playlist_podcasts").to route_to("playlist_podcasts#index")
    end


    it "routes to #show" do
      expect(:get => "/playlist_podcasts/1").to route_to("playlist_podcasts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/playlist_podcasts").to route_to("playlist_podcasts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/playlist_podcasts/1").to route_to("playlist_podcasts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/playlist_podcasts/1").to route_to("playlist_podcasts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/playlist_podcasts/1").to route_to("playlist_podcasts#destroy", :id => "1")
    end

  end
end
