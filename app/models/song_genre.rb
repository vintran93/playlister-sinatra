class SongGenre < ActiveRecord::Base
    belongs_to :genre
    belongs_to :song
end

#Song.all.find {|song| song.name == "California"}