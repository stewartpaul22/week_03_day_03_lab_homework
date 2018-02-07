require("pry")
require("pg")
require_relative('../db/sql_runner.rb')

class Album

  attr_accessor :title, :genre, :artist_id
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
    @artist_id = options['artist_id'].to_i
  end

  # Create and Save Albums
  def save()
    sql = "INSERT INTO albums (title, genre, artist_id) VALUES ($1, $2, $3) RETURNING id"
    values = [@title, @genre, @artist_id]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  # List All Artists/Albums

  # List all the albums they have by an artist

  # Show the artist any album belongs to


end
