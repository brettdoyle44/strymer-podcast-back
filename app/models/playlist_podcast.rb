class PlaylistPodcast < ApplicationRecord
  belongs_to :playlist
  belongs_to :podcast
end
