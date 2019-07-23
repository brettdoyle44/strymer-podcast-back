class PlaylistPodcastSerializer < ActiveModel::Serializer
  attributes :id
  has_one :playlist
  has_one :podcast
end
