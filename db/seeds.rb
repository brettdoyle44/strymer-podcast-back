# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

Podcast.transaction do
  CSV.foreach(Rails.root + 'data/podcast.csv',
              headers: true,
              header_converters: ->(h) { h.downcase.to_sym }) do |podcast_row|
    podcast = podcast_row.to_hash
    Podcast.create podcast unless Podcast.exists? podcast
  end
end

Episode.transaction do
  CSV.foreach(Rails.root + 'data/episode.csv',
              headers: true,
              header_converters: ->(h) { h.downcase.to_sym }) do |episode_row|
    episode = episode_row.to_hash
    Episode.create episode unless Episode.exists? episode
  end
end
