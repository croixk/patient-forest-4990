require 'rails_helper'

RSpec.describe 'Movies show page' do

  it 'contains movie attributes' do
    @universal_studios = Studio.create!(name: 'Universal Studios', location: 'Hollywood')
    @raiders = Movie.create!(title: 'Raiders of the Lost Ark', creation_year: 1981, genre: 'Action/Adventure', studio_id: "#{@universal_studios.id}")
    visit "/movies/#{@raiders.id}"
    expect(page).to have_content(@raiders.title)
    expect(page).to have_content(@raiders.creation_year)
    expect(page).to have_content(@raiders.genre)
  end


  it 'contains actor attributes' do
    @universal_studios = Studio.create!(name: 'Universal Studios', location: 'Hollywood')
    @raiders = Movie.create!(title: 'Raiders of the Lost Ark', creation_year: 1981, genre: 'Action/Adventure', studio_id: @universal_studios.id)
    # @harrison_ford = Actor.create!(name: 'Harrison Ford', age: '78', movie_id: @raiders.id)
    # visit "/movies/#{@raiders.id}"
    # expect(page).to have_content(@raiders.actors)
    # expect(page).to have_content(@raiders.actor_average_age)
  end






end
