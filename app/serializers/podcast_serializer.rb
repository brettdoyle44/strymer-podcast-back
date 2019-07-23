class PodcastSerializer < ActiveModel::Serializer
  attributes :id, :title, :publisher, :description, :image
  has_many :episodes
end
