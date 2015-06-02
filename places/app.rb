require('sinatra')
require('sinatra/reloader')
require('./lib/place')


get('/') do
  @places = Place.all
  erb(:index)
end

post('/places') do
  description = params.fetch('description')
  place = Place.new(description)
  place.save
  erb(:success)
end
