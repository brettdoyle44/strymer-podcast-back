class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :title
      t.date :pub_date
      t.text :description
      t.string :audio
      t.integer :length
      t.references :podcast, foreign_key: true

      t.timestamps
    end
  end
end
