require('pry')
require('pg')
require_relative('../db/sql_runner.rb')

class Artist

  attr_reader :id, :name
  attr_writer :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO artists (name) VALUES ($1) RETURNING *"
    values = [@name]
    @id = SqlRunner.run(sql, values)[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM artists"
    artists = SqlRunner.run(sql)
    return artists.map{|artist| Artist.new(artist)}
  end

  # List all the albums they have by an artist

  # Show the artist any album belongs to


end
