class Song < ApplicationRecord
	validates :artist, :name, presence: true
    belongs_to :playlist
end
