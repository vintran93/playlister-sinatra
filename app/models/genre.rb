require "./app/models/concerns/slugifiable.rb"

class Genre < ActiveRecord::Base
    has_many :song_genres
    has_many :songs, through: :song_genres
    has_many :artists, through: :songs

    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods
end

#class Artist < ActiveRecord::Base
    #has_many :songs
    #has_many :artists, :through => :songs

    #include Slugifiable::InstanceMethods
    #extend Slugifiable::ClassMethods
#end  