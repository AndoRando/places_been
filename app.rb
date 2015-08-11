require('sinatra')
require('sinatra/reloader')
require('./lib/places_been')
also_reload('./lib/**/*.rb')

get('/') do
  @places = Place.all()
  erb(:index)
end

post('/places') do
  place_name = params.fetch('name_of_place')
  place = Place.new(place_name)
  place.save()
  erb(:places)
end
