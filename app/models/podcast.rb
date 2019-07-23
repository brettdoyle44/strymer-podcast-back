class Podcast < ApplicationRecord
  has_many :episodes
  has_many :playlist_podcasts
  has_many :playlists, through: :playlist_podcasts
end
