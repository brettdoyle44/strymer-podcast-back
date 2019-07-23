class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :user, :podcasts
end
