class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :title, :pub_date, :description, :audio, :length
  has_one :podcast
end
