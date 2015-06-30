require 'rails_helper'

describe 'displaying sections on homepage' do
  it 'displays section headings on homepage' do
    visit new_section_path
    fill_in 'section_heading', :with => 'Javascript'
    click_on 'Create Section'
    expect(page).to have_content 'Section 1'
  end
end
