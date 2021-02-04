class School
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def students
    []
  end
end

RSpec.describe School do
  it 'has a name' do
    school = School.new('Beverly Hills High School')
    expect(school.name).to eq('Beverly Hills High School')
  end

  it 'should start off with no students' do
    school = School.new('Notre Dame High School')
    expect(school.students).to eq([])
  end
end