require 'rails_helper'

RSpec.describe 'the studio index' do

  it 'contains information about studio' do
    @universal_studios = Studio.create!(name: 'Universal Studios', location: 'Hollywood')
    @raiders = Movie.create!(title: 'Raiders of the Lost Ark', creation_year: 1981, genre: 'Action/Adventure', studio: "#{@universal_studios.id}")
    visit '/studios'
    expect(page).to have_content(@studio.name)
    expect(page).to have_content(@studio.location)
    # save_and_open_page
  end

end
