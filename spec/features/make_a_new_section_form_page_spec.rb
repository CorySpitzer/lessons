require 'rails_helper'

describe 'the new section path' do
  it 'visits the new section page' do
    visit new_section_path
    expect(page).to have_content "New Section"
  end
end
