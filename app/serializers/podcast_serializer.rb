class PodcastSerializer < ActiveModel::Serializer
  attributes :id, :title, :publisher, :description, :image
  belongs_to :user
  has_many :episodes
end
