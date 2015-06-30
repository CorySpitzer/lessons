require 'rails_helper'

describe 'the new lesson path' do
  it 'visits the new lesson page' do
    section_test = Section.create({heading: 'Programming'})
    visit new_section_lesson_path(section_test.id)
    expect(page).to have_content "New Lesson"
  end

  # lesson_test = section_test.lessons.create({title: 'Javascript', content: 'Learning'})


  # it 'creates a new lesson' do
  #   visit new_lesson_path
  #   fill_in 'section_heading', :with => 'Javascript'
  #   click_on 'Create Section'
  #   expect(page).to have_content 'Javascript'
  # end
end
