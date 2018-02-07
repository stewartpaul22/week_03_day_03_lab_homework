require("pry")
require("pg")

class Artist

  attr_reader :id, :name
  attr_writer :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  # Create and Save Artists
  def save()
    
  end

  # Create and Save Albums

  # List All Artists/Albums

  # List all the albums they have by an artist

  # Show the artist any album belongs to


end
