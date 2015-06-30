require 'rails_helper'

describe 'the new section path' do
  it 'visits the new section page' do
    visit new_section_path
    expect(page).to have_content "New Section"
  end

  it 'creates a new section' do
    visit new_section_path
    fill_in 'section_heading', :with => 'Javascript'
    click_on 'Create Section'
    expect(page).to have_content 'Javascript'
  end
end
