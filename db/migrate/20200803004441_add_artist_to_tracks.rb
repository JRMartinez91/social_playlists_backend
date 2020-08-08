class AddArtistToTracks < ActiveRecord::Migration[6.0]
  def change
    add_column :tracks, :artist, :string
  end
end
