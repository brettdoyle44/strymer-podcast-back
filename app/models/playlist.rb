class Playlist < ApplicationRecord
  belongs_to :user
  has_many :playlist_podcasts, dependent: :destroy
  has_many :podcasts, through: :playlist_podcasts
end
