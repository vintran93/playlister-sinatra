require "./app/models/concerns/slugifiable.rb"

class Song < ActiveRecord::Base
    belongs_to :artist
    has_many :song_genres
    has_many :genres, through: :song_genres

    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods
end

#<label> Genres </label>
#<% Genre.all.each do |genre| %>
 #<input id="<%= genre.name %>" type="checkbox" name="genres[]" value="<%= genre.id %>">
 #<label><%=genre.name%></label>
#<% end %>

#<label for="name">Genre</label>
#<input type="text" name="genre[name]" id="name"> </br>