class PodcastSerializer < ActiveModel::Serializer
  attributes :id, :title, :publisher, :description, :image, :playlists
  has_many :episodes
end
