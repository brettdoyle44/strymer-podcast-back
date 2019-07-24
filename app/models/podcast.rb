class Podcast < ApplicationRecord
  has_many :episodes
  has_many :playlist_podcasts, dependent: :destroy
  has_many :playlists, through: :playlist_podcasts
end
