class Cat
  attr_reader :name, :skill

  def initialize(name, skill)
    @name = name
    @skill = skill
  end
end

RSpec.describe 'have attributes_matcher' do

  describe Cat.new('kitty', 'fly') do
    it 'test for subject have attributes' do
      expect(subject).to have_attributes(name: 'kitty')
      expect(subject).to have_attributes(skill: 'fly')
    end

    it { is_expected.to have_attributes(name: 'kitty')}
  end

end