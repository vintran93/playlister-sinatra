require "./app/models/concerns/slugifiable.rb"

class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, :through => :songs

    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods
end  

#spec/features/05_song_form_spec.rb