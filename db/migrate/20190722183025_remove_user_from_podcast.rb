class RemoveUserFromPodcast < ActiveRecord::Migration[5.2]
  def change
    remove_column :podcasts, :user_id
  end
end
