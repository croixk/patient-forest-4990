require 'rails_helper'

RSpec.describe 'the studio index' do

  it 'contains information about studio' do
    @studio = Studio.create!(name: 'Universal Studios', location: 'Hollywood')
    visit '/studios'
    expect(page).to have_content(@studio.name)
    expect(page).to have_content(@studio.location)

  end

end
