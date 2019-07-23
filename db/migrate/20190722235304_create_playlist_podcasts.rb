class CreatePlaylistPodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :playlist_podcasts do |t|
      t.references :playlist, foreign_key: true
      t.references :podcast, foreign_key: true

      t.timestamps
    end
  end
end
