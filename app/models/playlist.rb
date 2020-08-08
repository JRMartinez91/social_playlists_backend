class Playlist < ApplicationRecord
    belongs_to :user
    has_many :tracks, -> { order(:position => :asc)},dependent: :destroy
end
