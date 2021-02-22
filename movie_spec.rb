class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "Dance"
  end
  
  def fall_off_ladder
    "Help!!"
  end

  def got_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def shooting
    if actor.ready?
    puts actor.act
    puts actor.fall_off_ladder
    puts actor.got_fire
    end
  end
end

actor = Actor.new("James")
movie = Movie.new(actor)
movie.shooting