class AddTagsAndPositionToTracks < ActiveRecord::Migration[6.0]
  def change
    add_column :tracks, :position, :integer
    add_column :playlists, :tags, :string
  end
end
