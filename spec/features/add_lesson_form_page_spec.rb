require 'rails_helper'

describe 'the new lesson path' do
  it 'visits the new lesson page' do
    visit new_section_path
    fill_in 'section_heading', :with => 'Javascript'
    click_on 'Create Section'
    visit new_section_lesson_path(0)
    expect(page).to have_content "New Lesson"
  end

  # it 'creates a new lesson' do
  #   visit new_lesson_path
  #   fill_in 'section_heading', :with => 'Javascript'
  #   click_on 'Create Section'
  #   expect(page).to have_content 'Javascript'
  # end
end
