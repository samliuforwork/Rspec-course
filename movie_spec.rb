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
    puts actor.act
    end
  end
end

# actor = Actor.new("James")
# movie = Movie.new(actor)
# movie.shooting

RSpec.describe Movie do
  let(:stuntman) { double("Mr.brown", ready?: true, act: "Dance", fall_off_ladder: "Help!", got_fire: true)}
  subject { described_class.new(stuntman) }

  describe 'start shooting method' do
    it 'expect actor it do 3 action' do
      expect(stuntman).to receive(:act).exactly(2).times
      expect(stuntman).to receive(:ready?).exactly(1).times
      expect(stuntman).to receive(:fall_off_ladder).exactly(1).times
      expect(stuntman).to receive(:got_fire).exactly(1).times
      subject.shooting
    end
  end
end