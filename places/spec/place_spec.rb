require('rspec')
require('pry')
require('place')

describe(Place) do
  before do
    Place.clear
  end

describe('#place') do
  it('tells the name of a place Ive been') do
    test_city= Place.new('Seattle')
    expect(test_city.place).to(eq('Seattle'))
  end
end
describe('.all') do
  it('is empty at first') do
    expect(Place.all).to(eq([]))
  end
end
describe('#save') do
  it('adds a place to the list and saves it') do
    test_city = Place.new('NYC')
    test_city.save
    expect(Place.all).to(eq([test_city]))
  end
end
describe('.clear') do
  it('clears out alal of the saved places') do
    Place.new('NYC').save
    Place.clear
    expect(Place.all).to(eq([]))
    end
  end
end
