require 'rails_helper'

describe "Clicking section headers" do
  it 'clicks the section heading link' do
    visit new_section_path
    fill_in 'section_heading', :with => 'Javascript'
    click_on 'Create Section'
    click_link 'Javascript'
    expect(page).to have_content 'Javascript Lessons'
  end
end
