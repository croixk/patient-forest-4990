require 'rails_helper'

RSpec.describe 'the studio index' do

  it 'contains information about studio' do
    @universal_studios = Studio.create!(name: 'Universal Studios', location: 'Hollywood')
    @raiders = Movie.create!(title: 'Raiders of the Lost Ark', creation_year: 1981, genre: 'Action/Adventure', studio_id: "#{@universal_studios.id}")
    visit '/studios'
    expect(page).to have_content(@universal_studios.name)
    expect(page).to have_content(@universal_studios.location)
    expect(page).to have_content(@raiders.title)
    save_and_open_page
  end

end
